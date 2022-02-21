import 'package:flutter/material.dart';
import 'dart:io';
import '../widgets/roundedButton.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _userEmail = TextEditingController();
  final _userFirstName = TextEditingController();
  final _userPassword = TextEditingController();
  final _userConfirmPassword = TextEditingController();
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
                        top: 10,
                        bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/cityact.png',
                          scale: 2
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
                            'First Name',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(-105, 0, 0),
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
                                controller: _userFirstName,
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
                        Transform(
                          child: Text(
                            'Confirm Password',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(-70, 0, 0),
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
                                controller: _userConfirmPassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Field Cannot Be Empty";
                                  }
                                  else if (value != _userPassword.value) {
                                    return "Passwords Do Not Match";
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.next,
                                onEditingComplete: _node.nextFocus,
                              ),
                            ),
                          ),
                        ),
                        Container(height: 15),
                        RoundedButton(
                          title: 'Register',
                          isActive: true,
                          colorActive: Theme.of(context).primaryColor,
                          colorInactive: Colors.grey,
                          function: () {
                            
                          },
                          height: 50,
                          width: 200,
                        ),
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
}
