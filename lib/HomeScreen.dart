import 'package:flutter/material.dart';
import 'NutritionPlanScreen.dart';
import 'ProfileScreen.dart';
import 'WorkoutLibrary.dart';
import 'ScheduleScreen.dart';
import 'ProgressScreen.dart';
import 'CommunityScreen.dart';
import 'SettingsScreen.dart';
import 'SubscriptionScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification handling logic here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sardor Eslamasov'),
              accountEmail: Text('eslamasovsardor@gmail.com'),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  // Navigate to profile screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_pic.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Calendar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text('Subscription'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubscriptionScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Progress Image and Label
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProgressScreen()),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/progress_image.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Progress',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          // Nutrition Plan Image and Label
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NutritionPlanScreen()),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/nutrition_image.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Nutrition Plan',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          // Workout Library Image and Label
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkoutLibrary()),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/workout_image.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Workout Library',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityScreen()),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/Community_image.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Community',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your FAB action
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
