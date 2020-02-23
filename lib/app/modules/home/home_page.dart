import 'package:auto_size_text/auto_size_text.dart';
import 'package:calc_neumorphism/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

    final HomeController _controller = Modular.get();

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
            child: Observer(
              builder: (_) => AutoSizeText(
                _controller.inputs,
                style: TextStyle(color: Colors.white, fontSize: 80),
                maxLines: 2,
              ),
            ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: 'AC',
                      textColor: Colors.grey,
                      onTap: (value) {
                        _controller.reset();
                      },
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '⁺⁄₋',
                      textColor: Colors.grey,
                      onTap: (_) {},
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '%',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '÷',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '7',
                      onTap: _controller.add,
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '8',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '9',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '*',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '4',
                      onTap: _controller.add,
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '5',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '6',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '-',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '1',
                      onTap: _controller.add,
                    ), //'⁺⁄₋'
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '2',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '3',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '+',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      // height: heigthKeyboard / 5 - 15,
                      width: screenSize.width * 0.18,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '0',
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '.',
                      textColor: Colors.grey,
                      onTap: _controller.add,
                    ),
                    CalcButton(
                      backgroundColor: Color.fromRGBO(242, 206, 57, 1),
                      heigthKeyboard: heigthKeyboard,
                      screenSize: screenSize,
                      text: '=',
                      onTap: (value) {_controller.result();},
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
