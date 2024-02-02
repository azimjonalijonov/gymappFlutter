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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/img.png'),
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
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Progress InkWell
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressScreen()),
                );
              },
              child: SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 500.0,
                    top: 10.0,
                    right: 500.0,
                    bottom: 10.0,
                  ),
                  color: Colors.black54,
                  child: Center(
                    child: Text(
                      'My Progress',
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NutritionPlanScreen()),
                );
              },
              child: SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 500.0,
                    top: 10.0,
                    right: 500.0,
                    bottom: 10.0,
                  ),
                  color: Colors.black54,
                  child: Center(
                    child: Text(
                      'Nutrition Plan',
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WorkoutLibrary()),
                );
              },
              child: SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  color: Colors.black54,
                  margin: EdgeInsets.only(
                    left: 500.0,
                    top: 10.0,
                    right: 500.0,
                    bottom: 10.0,
                  ),
                  child: Center(
                    child: Text(
                      'Workout Library',
                      style: TextStyle(fontSize: 18.0,color:Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
              },
              child: SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 500.0,
                    top: 10.0,
                    right: 500.0,
                    bottom: 10.0,
                  ),
                  color: Colors.black54,
                  child: Center(
                    child: Text(
                      'Community',

                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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