import 'package:flutter/material.dart';
import 'dart:io';

typedef CallBackFunction = void Function();

class RoundedButton extends StatefulWidget {
  String title;
  bool isActive;
  Color colorActive;
  Color colorInactive;
  CallBackFunction function;
  double height;
  double width;

  RoundedButton(
      {required this.title,
      required this.isActive,
      required this.colorActive,
      required this.colorInactive,
      required this.function,
      required this.height,
      required this.width});

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:
                  widget.isActive ? widget.colorActive : widget.colorInactive),
          child: Center(
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.button,
            ),
          )),
    );
  }
}
