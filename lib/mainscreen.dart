import 'package:basic_cal/constants.dart';
import 'package:flutter/material.dart';
import 'roundedSquareButton.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            color: kDark,
            height: 260,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              color: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(color: kBlue,title: 'π',),
                      RoundedSquareButton(color: kBlue,title: 'x²',),
                      RoundedSquareButton(color: kBlue,title: '√',),
                      RoundedSquareButton(color: kBlue,title: '😦')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(color: kDark,title: '7',),
                      RoundedSquareButton(color: kDark,title: '8',),
                      RoundedSquareButton(color: kDark,title: '9',),
                      RoundedSquareButton(color: kBlue,title: '/')
                    ],
                  ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(color: kDark,title: '4',),
                      RoundedSquareButton(color: kDark,title: '5',),
                      RoundedSquareButton(color: kDark,title: '6',),
                      RoundedSquareButton(color: kBlue,title: 'x')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(color: kDark,title: '1',),
                      RoundedSquareButton(color: kDark,title: '2',),
                      RoundedSquareButton(color: kDark,title: '3',),
                      RoundedSquareButton(color: kBlue,title: '+')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundedSquareButton(color: kDark,title: '.',),
                      RoundedSquareButton(color: kDark,title: '0',),
                      RoundedSquareButton(color: kDark,title: 'C',),
                      RoundedSquareButton(color: kBlue,title: '=')
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
