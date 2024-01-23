import 'package:flutter/material.dart';

class Message {
  final String owner;
  final String text;

  Message(this.owner, this.text);
}

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Message> messages = [
    Message('Abror', 'Hey, everyone! How\'s your workout going?'),
    Message('Bobur', 'I just finished a great session. Feeling energized!'),
    Message('Jahongir', 'Any suggestions for a good ab workout?'),
    Message('Komil', 'Excited to join the fitness challenge!'),
  ];

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Text('${messages[index].owner}: ${messages[index].text}'),
                  // Add more details like timestamp, etc., as needed
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    _sendMessage();
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    String messageText = messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        messages.add(Message('Me', messageText));
        messageController.clear();
      });
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: CommunityScreen(),
  ));
}
