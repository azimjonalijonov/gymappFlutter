import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login/Signup'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              // Fixed the error by replacing RaisedButton with ElevatedButton
              onPressed: () {},
              child: Text('Login'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              // Fixed the error by replacing RaisedButton with ElevatedButton
              onPressed: () {},
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
