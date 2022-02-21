import 'package:flutter/material.dart';
import 'dart:io';
import '../widgets/roundedButton.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _title = TextEditingController();
  final _description = TextEditingController();
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Transform(
                          child: Text(
                            'Title',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
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
                                controller: _title,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Title cannot be blank";
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
                            'Description',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            height: 80,
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
                                controller: _description,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Description cannot be blank";
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
                            'Date',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
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
                            'Location',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
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
                                  } else if (value != _userPassword.value) {
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
                        Transform(
                          child: Text(
                            'Token Type',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
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
                                  } else if (value != _userPassword.value) {
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
                        Transform(
                          child: Text(
                            'Token Amount',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
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
                                  } else if (value != _userPassword.value) {
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
                        Transform(
                          child: Text(
                            'Header Image',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          transform: Matrix4.translationValues(1, 0, 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            height: 50,
                            width: 100,
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
                                  } else if (value != _userPassword.value) {
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
                        Center(
                          child: RoundedButton(
                            title: 'Create',
                            isActive: true,
                            colorActive: Theme.of(context).primaryColor,
                            colorInactive: Colors.grey,
                            function: () {},
                            height: 50,
                            width: 200,
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(20, 40, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width - 188,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(blurRadius: 4)]),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0,
                                                bottom: 5.0,
                                                left: 5.0),
                                            child: GestureDetector(
                                              child: Icon(
                                                Icons.home,
                                                size: 45,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0,
                                                bottom: 5.0,
                                                left: 40,
                                                right: 40),
                                            child: GestureDetector(
                                              child: Icon(
                                                Icons.add_circle_outline,
                                                size: 45,
                                                color: Theme.of(context)
                                                    .focusColor,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0,
                                                bottom: 5.0,
                                                left: 5.0),
                                            child: GestureDetector(
                                              child: Icon(Icons.person,
                                                  size: 45,
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ]),
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
}