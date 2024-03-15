import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(), // Set LoginPage as the home page
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define variables to store username and password
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            '         Lخgin         ',
            style: TextStyle(
                color: Colors.purple, fontSize: 40, fontWeight: FontWeight.bold
                // Set the color property in TextStyle
                ),
          )),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text("Enter your credential to login"),
            TextField(
              onChanged: (value) {
                _username = value;
              },
              decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none),
                  fillColor: Colors.purple.withOpacity(0.1),
                  filled: true,
                  prefixIcon: const Icon(Icons.person)),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                _password = value;
              },
              obscureText: true, // Hide password
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Colors.purple.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.password),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validate username and password here
                // For simplicity, let's just print them for now
                print('Username: $_username');
                print('Password: $_password');
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 20),
                backgroundColor: Colors.purple,
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
