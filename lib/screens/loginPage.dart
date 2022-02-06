import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import './homePage.dart';
import '../widgets/roundedButton.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatelessWidget {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //final firestore = FirebaseFirestore.instance;
  final _userEmail = TextEditingController();
  final _userPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FocusScopeNode _node = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: FocusScope(
                  node: _node,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 60,
                        right: 60,
                        top: 70,
                        bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/cityact.png',
                          height: 300,
                          width: 300,
                        ),
                        Transform(
                          child: Text(
                            'Email Address',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(-90, 0, 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: [BoxShadow(blurRadius: 2)],
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                controller: _userEmail,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Email cannot be blank";
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.next,
                                onEditingComplete: _node.nextFocus,
                              ),
                            ),
                          ),
                        ),
                        Transform(
                          child: Text(
                            'Password',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(-110, 0, 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(blurRadius: 2)],
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                  controller: _userPassword,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password cannot be blank";
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.done,
                                  onEditingComplete: _node.nextFocus),
                            ),
                          ),
                        ),
                        Container(height: 15),
                        RoundedButton(
                          title: 'Login',
                          isActive: true,
                          colorActive: Theme.of(context).primaryColor,
                          colorInactive: Colors.grey,
                          function: () {
                            if (_formKey.currentState!.validate()) {
                              login(context);
                            }
                          },
                          height: 50,
                          width: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Text(
                              'Forgot Password',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /*User? getCurrentUser() {
    return _auth.currentUser;
  }*/

  /*void _forgotPassword(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }*/

  void login(BuildContext context) {
    /* _auth
        .signInWithEmailAndPassword(
            email: _userEmail.text.trim(), password: _userPassword.text.trim())
        .then((_) {
      User? user = getCurrentUser();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("The username or password is incorrect"),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });*/
  }
}
