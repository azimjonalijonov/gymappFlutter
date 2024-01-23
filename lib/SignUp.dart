import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                buildTextField('Name', Icons.person),
                SizedBox(height: 16.0),
                buildTextField('Email', Icons.email),
                SizedBox(height: 16.0),
                buildTextField('Phone Number', Icons.phone,
                    keyboardType: TextInputType.phone),
                SizedBox(height: 16.0),
                buildTextField('Password', Icons.lock, obscureText: true),
                SizedBox(height: 24.0),
                buildSignUpButton(),
                SizedBox(height: 40.0),
                buildSignInButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, IconData icon,
      {bool obscureText = false,
      TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xff2196f3),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSignInButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xff2196f3),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
