import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'LoginSignupScreen.dart';

void main() {
  runApp(MyGymApp());
}

class MyGymApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;
    return MaterialApp(
      title: 'Gym App',
      theme: ThemeData(),
      initialRoute: isLoggedIn ? '/home' : '/login',
      routes: {
        '/login': (context) => LoginSignupScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build your login/signup UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Login/Signup'),
      ),
      // Your login/signup form or widgets
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: HomeScreen(),
    );
  }
}
