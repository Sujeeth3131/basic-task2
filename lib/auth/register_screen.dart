import 'package:basic_task/auth/login_scren.dart';
import 'package:basic_task/auth/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 10),
              child: Align(alignment: Alignment.centerLeft,
                child: CircleAvatar(
                    radius: 19,
                    backgroundColor: Color(0xFFd4e0e9),
                    child: GestureDetector(onTap: (){{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StartScreen()),
                      );
                    }},
                        child: Icon(Icons.arrow_back_ios_sharp))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Color(0xFF346296),
                          fontWeight: FontWeight.bold,
                          fontSize: 42),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Create your new account',
                      style: TextStyle(
                          color: Color(0xFFa3bbd4),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextFormField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        filled: true,
                        fillColor: Color(0xFFe3ebf5),
                        prefixIcon: Icon(
                          Icons.person,size: 20,
                          color: Color(0xFF003a7e),
                        ),
                        hintText: "Full name",
                        hintStyle:
                            TextStyle(color: Color(0xFF003a7e), fontSize: 14),
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        filled: true,
                        fillColor: Color(0xFFe3ebf5),
                        prefixIcon: Icon(
                          Icons.mail,size: 20,
                          color: Color(0xFF003a7e),
                        ),
                        hintText: "user@gmail.com",
                        hintStyle:
                            TextStyle(color: Color(0xFF003a7e), fontSize: 14),
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF003a7e),size: 20,),
                        filled: true,fillColor: Color(0xFFe3ebf5),
                      hintText: 'Password',
                        hintStyle:
                        TextStyle(color: Color(0xFF003a7e), fontSize: 14),
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                        backgroundColor: Color(0xFF003c7f),
                      ),
                      child: Text(
                        'Login',
                        style:
                        TextStyle(color: Colors.white)
                        ,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Color(0xFF84a5c7), fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xFF346296)),
                        ),
                      )
                    ],
                  ),
                  Row(children: [
                    Expanded(child: Divider()),
                    Text(
                      "Or continue with",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Expanded(child: Divider()),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 30,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SignInButton.mini(
                              buttonSize: ButtonSize.small,
                              buttonType: ButtonType.facebook,
                              onPressed: () {
                                print('click');
                              }),
                          SignInButton.mini(
                            buttonType: ButtonType.google,
                            onPressed: () {},
                          ),
                          SignInButton.mini(
                            buttonType: ButtonType.apple,
                            onPressed: () {},
                          ),
                        ],
                      )),
                  SizedBox(height: 15,),
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
                                    builder: (context) => Login_Screen()),
                              );
                            }
                          },
                          child: Text(
                            'Signin',
                            style: TextStyle(
                                color: Color(0xFF346296),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


