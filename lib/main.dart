import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF0A0E21),
            onPrimary: Colors.white,
            secondary: Colors.purple,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.red,
            background: Colors.white,
            onBackground: Colors.yellow,
            surface: Colors.green,
            onSurface: Colors.green),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
