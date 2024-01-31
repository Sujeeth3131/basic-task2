import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 500,
              width: 600,
              child: Image(image: AssetImage('assets/image/cloud_2.jpg'))),
          Text(
            'Welcome Back',
            style: TextStyle(color: Colors.blue, fontSize: 28),
          ),
          Text(
            'Login to your account',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Full name", border: OutlineInputBorder()),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Full name", border: OutlineInputBorder()),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              'remember me',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 16),
            ),
            Text(
              'forgot password ?',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                )),
            Row(
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(color: Colors.blue, fontSize: 22),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
