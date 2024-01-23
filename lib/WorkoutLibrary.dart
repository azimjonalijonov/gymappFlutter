import 'package:flutter/material.dart';

class WorkoutLibrary extends StatelessWidget {
  final List<Workout> workouts = [
    Workout(name: 'Push-ups', imagePath: 'images/pushup.jpeg'),
    Workout(name: 'Squats', imagePath: 'images/Squats.jpg'),
    Workout(name: 'Plank', imagePath: 'images/Plank.jpg'),
    Workout(name: 'Jumping Jacks', imagePath: 'images/jumping_jacks.jpg'),
    Workout(name: 'Lunges', imagePath: 'images/Lunges.jpg'),
    Workout(name: 'Crunches', imagePath: 'images/Crunches.jpg'),
    // Add more workouts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Library'),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return _buildWorkoutCard(context, workouts[index]);
        },
      ),
    );
  }

  Widget _buildWorkoutCard(BuildContext context, Workout workout) {
    return GestureDetector(
      onTap: () {
        // Add navigation or action when a workout is tapped
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  workout.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                workout.name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Workout {
  final String name;
  final String imagePath;

  Workout({required this.name, required this.imagePath});
}

void main() {
  runApp(MaterialApp(
    home: WorkoutLibrary(),
  ));
}
