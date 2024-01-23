import 'package:flutter/material.dart';
import 'NutritionPlanScreen.dart';
import 'WorkoutLibrary.dart';
import 'ProgressScreen.dart';
import 'CommunityScreen.dart';
import 'ScheduleScreen.dart';
import 'ProfileScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          _buildCard(context, 'My Progress', ProgressScreen()),
          _buildCard(context, 'Nutrition Plan', NutritionPlanScreen()),
          _buildCard(context, 'Workout Library', WorkoutLibrary()),
          _buildCard(context, 'Community', CommunityScreen()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScheduleScreen()),
              );
              break;
            case 2:
              // Add navigation to the profile screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
              break;
          }
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, Widget destination) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      margin: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Card(
          color: Colors.blueAccent,
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
