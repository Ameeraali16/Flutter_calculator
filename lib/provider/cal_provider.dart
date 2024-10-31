import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{

  final compController = TextEditingController();

   // List to store calculation history
  List<String> _history = [];
  
  List<String> get history => _history;

  setValue(String value){
    String str = compController.text;

    switch(value){
      case "AC":
        compController.clear();
        break;
      case "+/-":
        toggleSign();
        break;
      case"X":
        compController.text += "*";
        break;
      case "=":
        compute();
        break;
      case "%":
        convertToPercentage();
        break;
      default:
        compController.text += value;
      
    }
    compController.selection = TextSelection.fromPosition(TextPosition(offset: compController.text.length));
  }

  compute() {
    String expression = compController.text;
    if (expression.isNotEmpty) {
      try {
        String result = expression.interpret().toString();
        _history.add('$expression = $result');
        compController.text = result;
        notifyListeners();
      } catch (e) {
        compController.text = "Error";
      }
    }
  }

  // Clear the history
  void clearHistory() {
    _history.clear();
    notifyListeners();
  }

  void convertToPercentage() {
    String text = compController.text;

    if (text.isNotEmpty) {
      try {
        double currentValue = double.parse(text);
        currentValue = currentValue / 100; // Convert to percentage
        compController.text = currentValue.toString();
      } catch (e) {
        // Handle error in case of invalid input
        compController.text = "Error";
      }
    }
  }

 
void toggleSign() {
  String text = compController.text;

  if (text.isNotEmpty) {
    try {
      double currentValue = double.parse(text);
      currentValue = -currentValue;  // Toggle sign
      compController.text = currentValue.toString();
    } catch (e) {
      // In case there's an invalid number in the text field
      compController.text = "Error";
    }
  }
}


  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}

