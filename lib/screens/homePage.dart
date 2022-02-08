import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Welcome, ',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Janelle',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                                  Text(
                                    '2 Pending Tasks',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: LinearProgressIndicator(
                                      value: 0.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(blurRadius: 4)]),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/att_ball.png',
                              scale: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                'AT&T Credits: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/k.png',
                              scale: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 7, left: 7, right: 7),
                              child: Text('KLIMA DAO: ',
                                  style: Theme.of(context).textTheme.headline2),
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: 195,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(blurRadius: 4)]),
                        child: Center(
                          child: Text(
                            'Volunteer Opportunities',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: 195,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(blurRadius: 4)]),
                        child: Center(
                          child: Text(
                            'Community DAO',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: 195,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(blurRadius: 4)]),
                        child: Image.asset('images/att_blue.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: 195,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(blurRadius: 4)]),
                        child: Icon(
                          Icons.info_rounded,
                          size: 100,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 5.0, left: 5.0),
                                  child: GestureDetector(
                                    child: Icon(
                                      Icons.home,
                                      size: 45,
                                      color: Theme.of(context).primaryColor,
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
                                      color: Theme.of(context).focusColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 5.0, left: 5.0),
                                  child: GestureDetector(
                                    child: Icon(Icons.person,
                                        size: 45,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
