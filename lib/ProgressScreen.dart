import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  // Replace this variable with the actual progress value
  double currentProgress = 0.76;

  // Replace this variable with the actual goal value
  double goalProgress = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your Progress',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Animated Circular Progress Indicator
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: currentProgress),
              duration: Duration(seconds: 1),
              builder: (context, value, child) {
                return CircularProgressIndicator(
                  value: value,
                  color: Colors.blue,
                );
              },
            ),
            SizedBox(height: 20.0),
            // Goal Progress Indicator
            LinearProgressIndicator(
              value: goalProgress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            SizedBox(height: 20.0),
            Text(
              '70%', // Replace with the actual progress percentage
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            // Motivational Quote
            Text(
              'Stay focused and never give up!',
              style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20.0),
            // Achievements
            Text(
              'Achievement Unlocked: Marathon Runner',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProgressScreen(),
  ));
}
