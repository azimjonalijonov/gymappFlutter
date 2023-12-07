import 'package:flutter/material.dart';
import 'package:gymapp/main.dart';

class NutritionPlanScreen extends StatelessWidget {
  void someFunction() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition Plan'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            someFunction();
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
