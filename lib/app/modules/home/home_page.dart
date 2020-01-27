import 'package:flutter/material.dart';

import 'widgets/calc_button.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final heightScreenText = screenSize.height * 0.4;
    final heigthKeyboard = screenSize.height * 0.6;

    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomRight,
          width: double.infinity,
          color: Color(0xFF141414),
          height: heightScreenText,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('90', style: TextStyle(color: Colors.white, fontSize: 80),),
          ),
        ),
        Container(
          color: Color.fromRGBO(240, 240, 240, 1),
          height: heigthKeyboard,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: 'AC',
                      textColor: Colors.grey,
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '⁺⁄₋',
                      textColor: Colors.grey,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '%',
                      textColor: Colors.grey,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '÷',
                      textColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '7',
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '8',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '9',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: 'x',
                      textColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '4',
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '5',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '6',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '-',
                      textColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '1',
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '2',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '3',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '+',
                      textColor: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      // height: heigthKeyboard / 5 - 15,
                      width: screenSize.width * 0.18,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '0',
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '.',
                      textColor: Colors.grey,
                    ),
                    CalcButton(
                      backgroundColor: Color.fromRGBO(242, 206, 57, 1),
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '=',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
