
import 'package:flutter/material.dart';
import 'package:untitled/payment.dart';

class WorkoutLibrary extends StatefulWidget {
  @override
  _WorkoutLibraryState createState() => _WorkoutLibraryState();
}

class _WorkoutLibraryState extends State<WorkoutLibrary> {
  final List<CourseAdvertisement> advertisements = [
     CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Fitness 101',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),
    CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),  CourseAdvertisement(
      // image: 'images/powerlifting.png',
      title: 'Advanced Yoga',
      description: 'What is the lorem Te Ipsum text?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Workout Library'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img.png'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: advertisements.length,
          itemBuilder: (context, index) {
            return buildCourseAdvertisement(advertisements[index]);
          },
        ),
      ),
    );
  }

  Widget buildCourseAdvertisement(CourseAdvertisement advertisement) {
    return Card(

      margin: EdgeInsets.only(
        left: 500.0,
        top: 10.0,
        right: 500.0,
        bottom: 10.0,
      ),
      color: Colors.black54, // Set card color to transparent
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically

        children: [
          // Image.asset(
          //   advertisement.image,
          //   height: 100.0,
          //   width: 400,
          //   fit: BoxFit.cover,
          // ),
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
                    color: Colors.white, // Set text color to white
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  advertisement.description,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(

                  onPressed: () {
                    // Navigate to the PaymentScreen on button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()),
                    );                  },
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
  // final String image;
  final String title;
  final String description;

  CourseAdvertisement({
    // required this.image,
    required this.title,
    required this.description,
  });
}
