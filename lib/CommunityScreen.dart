import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // List of Sample Messages
            _buildMessage('Abror', 'Hey, everyone! How is your day going?'),
            _buildMessage('Bobur',
                'I just finished a great workout session. Feeling energized! 💪'),
            _buildMessage(
                'Jahongir', 'Any recommendations for a good book to read?'),
            _buildMessage('Abbos',
                'Excited about the upcoming community event! Who else is joining? 🎉'),
            // Add more messages as needed
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(String userName, String message) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              message,
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CommunityScreen(),
  ));
}
