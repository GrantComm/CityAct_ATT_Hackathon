const Web3 = require("web3");
const {ThirdwebSDK} = require("@3rdweb/sdk");
const ethers = require("ethers");
// const admin = require("firebase-admin");
// admin.initializeApp();

// const db = admin.firestore();

// const getAddressBalances = require("eth-balance-checker/lib/web3");

const PKey="187393d6e1a8a30991e4a9416b1bc78357ed02428ac8e64069c35b096f1d9752";

const AApi="https://eth-rinkeby.alchemyapi.io/v2/432V8W2_9voO7PjnmxA_cw2eR5--TpFD";

const web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");

const sdk = new ThirdwebSDK("rinkeby");

const Sdk = new ThirdwebSDK(
    new ethers.Wallet(
        PKey,
        ethers.getDefaultProvider(AApi),
    ),
);

const functions = require("firebase-functions");

const app = Sdk.getAppModule("0x5a3Aa6f3510a3D19697aa454724Bf63a8411EcDa");

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//

// function that creates a new wallet and returns an object:
// address - string: The account address.
// privateKey - string: The accounts private key.
// This should never be shared or stored unencrypted in
// localstorage! Also make sure to null the memory after usage.
// signTransaction(tx [,callback])-Function: The function to sign transactions.
// See web3.eth.accounts.signTransaction() for more.
// sign(data) - Function: The function to sign transactions.
// See web3.eth.accounts.sign() for more.
exports.createUserWallet = functions.https.onRequest((request, response) => {
  const account = web3.eth.accounts.create();
  console.log(account);
  response.send(account.address);
});

// Takes in address and returns number of Att and Klima tokens in Json format.
exports.numOf_AttKlima = functions.https.onRequest(async (request, response)=>{
  const address = "0x62F6584A363459f2d78bD1C60E38a2E30d3157B3";
  const attMod=sdk.getTokenModule("0x88c13cA6feF6E8F8cc5cb7C6f9ce94E163CCEe30");
  const klmMod=sdk.getTokenModule("0xBa6ed30B655E9D2dE7f8128198ADcB3A50518E14");
  try {
    const attBalance = await attMod.balanceOf(address);
    const klmBalance = await klmMod.balanceOf(address);
    const ATT = attBalance.displayValue;
    const KLM = klmBalance.displayValue;
    const tokenVals = {
      "Att": ATT,
      "Klm": KLM,
    };
    response.send(tokenVals);
  } catch (error) {
    console.log(error);
    response.status(500).send(error);
  }
});

// function that creates a new volunteer opporunity or DAO wallet and returns:
// address - string: The account address.
// privateKey - string: The accounts private key.
// This should never be shared or stored unencrypted in
// localstorage! Also make sure to null the memory after usage.
// signTransaction(tx [,callback])-Function: The function to sign transactions.
// See web3.eth.accounts.signTransaction() for more.
// sign(data) - Function: The function to sign transactions.
// See web3.eth.accounts.sign() for more.
exports.createOrgWallet = functions.https.onRequest((request, response) => {
  const account = web3.eth.accounts.create();
  response.send(account.address);
});

exports.createDaoTks = functions.https.onRequest(async (request, response) => {
  try {
    const tkModule = await app.deployTokenModule({
      name: "Morehouse Student Coin",
      symbol: "MHS",
    });
    response.send(tkModule.address);
  } catch (error) {
    console.log(error);
    response.status(500).send(error);
  }
});

exports.mintTkns = functions.https.onRequest(async (request, response) => {
  try {
    const Tokenaddress = "0x5bC1661e46065ff1469D4ba79919FDf95b81ddE1";
    const tkMod=sdk.getTokenModule(Tokenaddress);
    const amount = 1000000;
    const amountWith18Decimals = ethers.utils.parseUnits(amount.toString(), 18);
    await tkMod.mint(amountWith18Decimals);
    const totalSupply = await tkMod.totalSupply();
    response.send(totalSupply);
  } catch (error) {
    console.log(error);
    response.status(500).send(error);
  }
});

