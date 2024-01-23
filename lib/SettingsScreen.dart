import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'General Settings',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    darkModeEnabled = value;
                    // Add your logic to handle dark mode state change
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add your logic for other settings or actions
              },
              child: Text('Other Settings'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _showLogoutConfirmationDialog();
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add your logic to handle logout
                _logout();
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );
  }

  void _logout() {
    // Add your logic to handle the logout process
    // For example, you can navigate to the login screen
    Navigator.pop(context); // Close the settings screen
    // Add your logic to navigate to the login screen
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsScreen(),
  ));
}
