// import 'package:flutter/material.dart';
//
// class CommunityScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Community'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // List of Sample Messages
//             _buildMessage('Abror', 'Hey, everyone! How is your day going?'),
//             _buildMessage('Bobur',
//                 'I just finished a great workout session. Feeling energized! 💪'),
//             _buildMessage(
//                 'Jahongir', 'Any recommendations for a good book to read?'),
//             _buildMessage('Abbos',
//                 'Excited about the upcoming community event! Who else is joining? 🎉'),
//             // Add more messages as needed
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildMessage(String userName, String message) {
//     return Card(
//       elevation: 2.0,
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               userName,
//               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               message,
//               style: TextStyle(fontSize: 14.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: CommunityScreen(),
//   ));
// }
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  TextEditingController _messageController = TextEditingController();
  List<Map<String, String>> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildMessage('Abror', 'Hey, everyone! How is your day going?'),
          _buildMessage('Bobur',
              'I just finished a great workout session. Feeling energized! 💪'),
          _buildMessage(
              'Jahongir', 'Any recommendations for a good book to read?'),
          _buildMessage('Abbos',
              'Excited about the upcoming community event! Who else is joining? 🎉'),
          Expanded(

            // List of Sample Messages

            // Add more messages as needed
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]['userName']!,
                    _messages[index]['message']!);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: _sendMessage,
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
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

  void _sendMessage() {
    String messageText = _messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add({'userName': 'You', 'message': messageText});
        _messageController.clear();
      });
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: CommunityScreen(),
  ));
}

