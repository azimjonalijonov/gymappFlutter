import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'app_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, email TEXT, phoneNumber TEXT, password TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.insert(
      'users',
      user,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

class SignUp extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                buildTextField('Name', Icons.person, _nameController),
                SizedBox(height: 16.0),
                buildTextField('Email', Icons.email, _emailController),
                SizedBox(height: 16.0),
                buildTextField('Phone Number', Icons.phone,
                    _phoneNumberController,
                    keyboardType: TextInputType.phone),
                SizedBox(height: 16.0),
                buildTextField('Password', Icons.lock, _passwordController,
                    obscureText: true),
                SizedBox(height: 24.0),
                buildSignUpButton(context),
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
      TextEditingController controller,
      {bool obscureText = false,
        TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
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

  Widget buildSignUpButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _saveUserData(context);
        Navigator.pushNamed(context, 'login');

      },
      child: Text('Sign Up'),
    );
  }

  // void _saveUserData(BuildContext context) async {
  //   String name = _nameController.text;
  //   String email = _emailController.text;
  //   String phoneNumber = _phoneNumberController.text;
  //   String password = _passwordController.text;
  //
  //   Map<String, dynamic> user = {
  //     'name': name,
  //     'email': email,
  //     'phoneNumber': phoneNumber,
  //     'password': password,
  //   };
  //
  //   await DatabaseHelper().insertUser(user);
  //   print("objectinserrrrrrrrrrrrrrrrrrrrrrrrrrrrrteeeeeeeeeeeeeeeeeeddddddddddd");
  //
  //   Navigator.pushNamed(context, 'login');
  // }
  Future<int> _saveUserData(BuildContext context) async {
    String name = _nameController.text;
    String email = _emailController.text;
    String phoneNumber = _phoneNumberController.text;
    String password = _passwordController.text;

    Map<String, dynamic> user = {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
    };

     DatabaseHelper dbHelper = DatabaseHelper();

     await dbHelper.insertUser(user);
    print('User inserted with id: ppppppppppppppppppppppppppp');

    // Navigate to login page
 return 3;  }


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
