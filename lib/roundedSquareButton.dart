import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedSquareButton extends StatelessWidget {
  String title;
  Function onPressed;
  Color color;

  RoundedSquareButton({this.onPressed, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: color,
      child: Container(
        // color: kDark,
        height: 80,
        width: 50,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
   
  }
}
