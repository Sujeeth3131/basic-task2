import 'package:basic_task/auth/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                  image: DecorationImage(
                      image: AssetImage('assets/image/cloud_2.jpg'),
                      fit: BoxFit.fill)),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Color(0xFF012a71),
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Text(
                'Login to your account',
                style: TextStyle(color: Color(0xFF97b0cc), fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
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
              height: 20,
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
            SizedBox(height: 20),
            Row(children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text(
                'remember me',
                style: TextStyle(color: Color(0xFF8daccb), fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Text(
                  'forgot password ?',
                  style: TextStyle(color: Color(0xFF012a71), fontSize: 18),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF003c7f))),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color(0xFFaec3d9), fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: Text(
                        "  Sign up",
                        style:
                            TextStyle(color: Color(0xFF064081), fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
