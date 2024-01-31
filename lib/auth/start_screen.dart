import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/image/cloud_1.jpg',
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The best',
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
                Text(
                  'app',
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
                Text(
                  'for city weather',
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 250,
                  height: 30,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ))),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Create an account',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
