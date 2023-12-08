import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Placeholder data for the health checklist
  List<bool> healthChecklist = [true, true, false]; // Replace with actual data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Gym Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Sardor Eslamasov',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Member since: April 2023',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('sardor2003@example.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('+1 (123) 456-7890'),
              ),
              ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text('Membership Type: Gold'),
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('Gender: Male'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Health Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text('Weight: 75 kg'),
              Text('Height: 180 cm'),
              Text('BMI: 23.1'),
              SizedBox(height: 16.0),
              Text(
                'Health Checklist',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              for (int i = 0; i < healthChecklist.length; i++)
                HealthCheckItem(
                  label: 'Item ${i + 1}',
                  isChecked: healthChecklist[i],
                  onToggle: () {
                    setState(() {
                      healthChecklist[i] = !healthChecklist[i];
                    });
                  },
                ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle log out or other actions
                  },
                  child: Text('Log Out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HealthCheckItem extends StatelessWidget {
  final String label;
  final bool isChecked;
  final VoidCallback onToggle;

  const HealthCheckItem({
    required this.label,
    required this.isChecked,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: GestureDetector(
        onTap: onToggle,
        child: isChecked
            ? Icon(Icons.check_box)
            : Icon(Icons.check_box_outline_blank),
      ),
    );
  }
}
