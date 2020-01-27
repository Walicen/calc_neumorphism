import 'package:flutter/material.dart';

import 'neumorphism_container.dart';


class CalcButton extends StatelessWidget {
  const CalcButton({
    Key key,
    @required this.heigthKeyboard,
    @required this.screenSize,
    this.text,
    this.textColor = Colors.black,
    this.backgroundColor,
  }) : super(key: key);

  final double heigthKeyboard;
  final Size screenSize;
  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return NeuomorphicContainer(
      backgroundColor: backgroundColor != null
          ? backgroundColor
          : Color.fromRGBO(240, 240, 240, 1),
      height: heigthKeyboard * 0.14,// 5 - 15,
      width: screenSize.width * 0.18,// 4 - 20,
      // foregroundDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(50),
      //   boxShadow: [
        
      //   BoxShadow(
      //           color: Color.fromRGBO(200, 200, 200, .5),
      //           offset: Offset(0, 0),
      //           blurRadius: 5.0),
      // ]),
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(100),
      child: Text(text,
          style: TextStyle(
            fontSize: 35,
            color: textColor,
          )),
    );
  }
}
