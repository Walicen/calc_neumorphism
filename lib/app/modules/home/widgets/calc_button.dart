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
    @required this.onTap,
  }) : super(key: key);

  final double heigthKeyboard;
  final Size screenSize;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(text),
      child: NeuomorphicContainer(
        backgroundColor: backgroundColor != null
            ? backgroundColor
            : Color.fromRGBO(240, 240, 240, 1),
        height: heigthKeyboard * 0.14,
        // 5 - 15,
        width: screenSize.width * 0.16,
        // 4 - 20,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(100),
        child: Text(text,
            style: TextStyle(
              fontSize: 35,
              color: textColor,
            )),
      ),
    );
  }
}
