import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<String> scheduledActivities = [
    'Morning Run',
    'Workout Session',
    'Read a Book',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Today\'s Schedule',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            _buildScheduledActivitiesList(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _showAddActivityDialog();
              },
              child: Text('Add New Activity'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduledActivitiesList() {
    return Expanded(
      child: ListView.builder(
        itemCount: scheduledActivities.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              title: Text(scheduledActivities[index]),
              trailing: IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  _markActivityAsCompleted(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _showAddActivityDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Activity'),
          content: TextField(
            onChanged: (value) {
              // Handle the input
            },
            decoration: InputDecoration(
              hintText: 'Enter activity name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add the new activity to the list
                _addNewActivity();
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _addNewActivity() {
    setState(() {
      // Add your logic to handle adding new activities
      scheduledActivities.add('New Activity');
    });
  }

  void _markActivityAsCompleted(int index) {
    setState(() {
      // Add your logic to handle marking activities as completed
      // For example, you can remove the activity from the list
      scheduledActivities.removeAt(index);
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: ScheduleScreen(),
  ));
}
