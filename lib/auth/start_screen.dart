import 'package:basic_task/auth/login_scren.dart';
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
            Padding(
              padding: const EdgeInsets.only(right: 80.0,bottom: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The best',
                    style: TextStyle(color: Color(0xFFffffff), fontSize: 44,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'app for',
                    style: TextStyle(color: Color(0xFFffffff), fontSize: 44,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'city weather',
                    style: TextStyle(color: Color(0xFFffffff), fontSize: 44,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      { {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login_Screen()),
                        );
                      }}
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),),
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            TextButton(
                // Within the `FirstRoute` widget
                onPressed: () { {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                }

                },
                child: Text(
                  'Create an account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
          ],
        ),
      ),
    );
  }
}
