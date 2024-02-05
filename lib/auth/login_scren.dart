import 'package:basic_task/auth/register_screen.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25) ),
            child: Image(
              fit: BoxFit.fill,
              alignment: Alignment.centerLeft,
              image: AssetImage(
                'assets/image/cloud.jpeg',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Color(0xFF346296),
                        fontWeight: FontWeight.bold,
                        fontSize: 42),
                  ),
                ),
                Center(
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                        color: Color(0xFFa3bbd4),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      filled: true,
                      fillColor: Color(0xFFe3ebf5),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 20,
                        color: Color(0xFF003a7e),
                      ),
                      hintText: "Full name",
                      hintStyle:
                          TextStyle(color: Color(0xFF003a7e), fontSize: 14),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF003a7e),
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Color(0xFFe3ebf5),
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Color(0xFF003a7e), fontSize: 14),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      'Remember me',
                      style: TextStyle(color: Color(0xFF84a5c7), fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFF346296)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(400, 50),
                      backgroundColor: Color(0xFF003c7f),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont' have an account?",
                style: TextStyle(color: Color(0xFF7d9bbd), fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    }
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color(0xFF346296),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
