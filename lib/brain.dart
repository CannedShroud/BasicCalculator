import 'mainscreen.dart';

String output = '0';
String _output = '0';
double num1 = 0;
double num2 = 0;
String operate = '';
double result = 0;

addition(buttonText) {
  if (buttonText == 'C') {
    String output = '0';
    String _output = '0';
    double num1 = 0;
    double num2 = 0;
    String operate = '';
  }
  
  
   else if (buttonText == '.') {
    if (output.contains('.')) {
      print('Already contains decimal');
    }
  } 
  
  else if (buttonText == '+' ||
      buttonText == '-' ||
      buttonText == 'x' ||
      buttonText == '-') {
    operate = buttonText;
    num1 = double.parse(output);
    output = '0';
  }


  else if (buttonText == '='){
    num2 = double.parse(output);
    if (operate == '+'){
      result = num1 + num2;
    }

    else if (operate == '-'){
      result = num1 - num2;
    }

     else if (operate == 'x'){
      result = num1 * num2;
    }

     else if (operate == '-'){
      result = num1 / num2;
    }
    else{
      print('fekked operaters');
    }
    output = result.toString();
  }

  else {
    output = output + buttonText;
  }

  
}
