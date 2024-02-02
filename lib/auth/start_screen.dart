import 'package:basic_task/auth/login_screen.dart';
import 'package:basic_task/auth/register_screen.dart';
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
                  'assets/image/demo.jpg',
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
                  style: TextStyle(color: Color(0xFFffffff), fontSize: 40),
                ),
                Text(
                  'app',
                  style: TextStyle(color: Color(0xFFffffff), fontSize: 40),
                ),
                Text(
                  'for city weather',
                  style: TextStyle(color: Color(0xFFffffff), fontSize: 40),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    }},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xFF003c7f))),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white,fontSize: 26),
                    )),
              ),
            ),
            TextButton(// Within the `FirstRoute` widget
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen()),
           );
         },
                child: Text(
                  'Create an account',
                  style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w400),
                )),
          ],
        ),
      ),
    );
  }
}
