import 'package:flutter/material.dart';

class NutritionPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // List of Sample Nutrition Suggestions
            _buildNutritionSuggestion('Breakfast',
                'Oatmeal with fruits and a glass of orange juice.'),
            _buildNutritionSuggestion(
                'Lunch', 'Grilled chicken salad with a side of quinoa.'),
            _buildNutritionSuggestion(
                'Snack', 'Greek yogurt with mixed berries.'),
            _buildNutritionSuggestion('Dinner',
                'Salmon with roasted sweet potatoes and steamed broccoli.'),
            // Add more nutrition suggestions as needed
          ],
        ),
      ),
    );
  }

  Widget _buildNutritionSuggestion(String mealType, String suggestion) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mealType,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              suggestion,
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NutritionPlanScreen(),
  ));
}
