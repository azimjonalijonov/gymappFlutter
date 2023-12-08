import 'package:flutter/material.dart';

class WorkoutLibrary extends StatefulWidget {
  @override
  _WorkoutLibraryState createState() => _WorkoutLibraryState();
}

class _WorkoutLibraryState extends State<WorkoutLibrary> {
   final List<CourseAdvertisement> advertisements = [
    CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Fitness 101',
      description: 'Get started What does Newtons 2nd law state? Newtons seconvariables – the net force acting on the object and the mass of the object. The acceleration of the body is directly proportional to the net force acting on the body and inversely proportional to the mass of the body.with basic fitness exercises.',
    ),
    CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),  CourseAdvertisement(
      image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'Master the art of advanced yoga poses.',
    ),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Library'),
      ),
      body: ListView.builder(
        itemCount: advertisements.length,
        itemBuilder: (context, index) {
          return buildCourseAdvertisement(advertisements[index]);
        },
      ),
    );
  }

  Widget buildCourseAdvertisement(CourseAdvertisement advertisement) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            advertisement.image,
            height: 100.0,
            width: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  advertisement.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  advertisement.description,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement your enrollment logic here
                  },
                  child: Text('Enroll Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseAdvertisement {
  final String image;
  final String title;
  final String description;

  CourseAdvertisement({
    required this.image,
    required this.title,
    required this.description,
  });
}
