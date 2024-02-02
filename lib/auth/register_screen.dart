import 'package:basic_task/auth/login_screen.dart';
import 'package:basic_task/auth/start_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icon_shadow/flutter_icon_shadow.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:text_divider/text_divider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xffd4e0e9),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StartScreen()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color(0xFF003c7f),
                        size: 21,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xFF02397c),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Create your new account',
                  style: TextStyle(
                    color: Color(0xFFa0b6cf),
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFe3ebf5),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF134382),
                        size: 19,
                      ),
                      hintText: "Full name",
                      hintStyle: TextStyle(
                          color: Color(0xFF7190b7),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFe3ebf5),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color(0xFF134382),
                      size: 19,
                    ),
                    hintText: "user@gmail.com",
                    hintStyle: TextStyle(
                        color: Color(0xFF7190b7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    border: InputBorder.none,
                    isDense: true,
                    constraints: BoxConstraints(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  style: TextStyle(color: Color(0xFF7190b7), fontSize: 16),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFe3ebf5),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF134382),
                      size: 19,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF003c7f)),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 145, vertical: 15),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: false,
                            onChanged: (value) {}),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: Color(0xFF8daccb),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Forgot password ?',
                      style: TextStyle(
                          color: Color(0xFF012a71),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TextDivider.horizontal(
                  thickness: 2,
                  text: const Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.google,
                        mini: true,
                      ),
                    ),
                    //For facebook Button
                    Expanded(
                      child: FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.facebook,
                        mini: true,
                      ),
                    ),
                    //For google Button
                    Expanded(
                      child: FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.google,
                        mini: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                        color: Color(0xFFa0b6cf),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: '  Signin',
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                )
                              },
                        style:
                            TextStyle(color: Color(0xFF02397c), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
