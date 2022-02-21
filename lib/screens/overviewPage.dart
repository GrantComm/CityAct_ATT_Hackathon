import 'package:flutter/material.dart';
import 'dart:io';
import './LoginPage.dart';
import './registerPage.dart';
import '../widgets/roundedButton.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: Colors.white,
        body: _body(),
        panel: _panel(),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      ),
    );
  }

  void navigateToLoginPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void navigateToRegistrationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegistrationPage()));
  }

  Widget _body() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Transform(
                        transform: Matrix4.translationValues(120, 0, 0),
                        child: Image.asset('images/cityact.png', scale: 3)),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: RoundedButton(
                        title: 'Login',
                        isActive: true,
                        colorActive: Theme.of(context).primaryColor,
                        colorInactive: Colors.grey,
                        function: () {},
                        height: 50,
                        width: 100,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      child: Text(
                        'Play your part in the future of your community',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )),
                Transform(
                  transform: Matrix4.translationValues(-105, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 8),
                    child: RoundedButton(
                      title: 'Get Started Now',
                      isActive: true,
                      colorActive: Theme.of(context).primaryColor,
                      colorInactive: Colors.grey,
                      function: () {
                        navigateToRegistrationPage;
                      },
                      height: 50,
                      width: 200,
                    ),
                  ),
                ),
                Image.asset('images/overview.png'),
              ],
            )),
      ),
    );
  }

  Widget _panel() {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10), 
            Icon(
              Icons.arrow_circle_up_rounded,
              color: Theme.of(context).focusColor,
            ),
            Text("SWIPE UP TO LEARN MORE",
                style: Theme.of(context).textTheme.bodyText2),
            SizedBox(
              height: 36.0,
            ),
            Row(children: <Widget>[Padding(padding: EdgeInsets.all(9), child: Image.asset('images/mh.png', scale: 7)), Padding(padding: EdgeInsets.only(left:5, right:0), child: Image.asset('images/att.png', scale: 25)), Image.asset('images/cityact.png', scale: 2.9)]),
            Padding(padding: EdgeInsets.all(8), child: Text('Helping everyone and the environment.', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black))),
            Padding(padding: EdgeInsets.all(5), child: Text('With City Act, you can....', style: TextStyle(fontSize: 16,color: Colors.black)))
          ],
        ));
  }
}
