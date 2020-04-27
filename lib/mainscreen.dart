import 'package:basic_cal/constants.dart';
import 'package:flutter/material.dart';
import 'roundedSquareButton.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String output = '0';
  String _output = '0';
  double num1 = 0;
  double num2 = 0;
  String operate = '';
  double result = 0;

  calculate(buttonText) {
    if (buttonText == 'C') {
      String output = '0';
      String _output = '0';
      double num1 = 0;
      double num2 = 0;
      String operate = '';
    } else if (buttonText == '.') {
      if (output.contains('.')) {
        print('Already contains decimal');
      }
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '-') {
      operate = buttonText;
      num1 = double.parse(output);
      output = '0';
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operate == '+') {
        result = num1 + num2;
      } else if (operate == '-') {
        result = num1 - num2;
      } else if (operate == 'x') {
        result = num1 * num2;
      } else if (operate == '-') {
        result = num1 / num2;
      } else {
        print('fekked operaters');
      }
      output = result.toString();
    } else {
      output = output + buttonText;
    }
    print(output);
    setState(() {
      output = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: kDark,
              width: double.infinity,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      output,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(
                        color: kBlue,
                        title: 'π',
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: 'x²',
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: '√',
                      ),
                      RoundedSquareButton(color: kBlue, title: '😦')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(
                        color: kDark,
                        title: '7',
                        onPressed: () {
                          calculate('7');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '8',
                        onPressed: () {
                          calculate('8');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '9',
                        onPressed: () {
                          calculate('9');
                        },
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: '/',
                        onPressed: () {
                          calculate('/');
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(
                        color: kDark,
                        title: '4',
                        onPressed: () {
                          calculate('4');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '5',
                        onPressed: () {
                          calculate('5');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '6',
                        onPressed: () {
                          calculate('6');
                        },
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: 'x',
                        onPressed: () {
                          calculate('x');
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(
                        color: kDark,
                        title: '1',
                        onPressed: () {
                          calculate('1');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '2',
                        onPressed: () {
                          calculate('2');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '3',
                        onPressed: () {
                          calculate('3');
                        },
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: '+',
                        onPressed: () {
                          calculate('+');
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(
                        color: kDark,
                        title: '.',
                        onPressed: () {
                          calculate('.');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: '0',
                        onPressed: () {
                          calculate('0');
                        },
                      ),
                      RoundedSquareButton(
                        color: kDark,
                        title: 'C',
                        onPressed: () {
                          calculate('C');
                        },
                      ),
                      RoundedSquareButton(
                        color: kBlue,
                        title: '=',
                        onPressed: () {
                          calculate('=');
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
