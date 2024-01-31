import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Register',style: TextStyle(color: Colors.blue,fontSize: 26),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('create your new account',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Full Name",
                  border: OutlineInputBorder()),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){},
                child:
                Row(
                  children: [
                             Icon(Icons.mail,color: Colors.blue,),
                             Text('user@gmail.com',style: TextStyle(color: Colors.blue,fontSize:22 ),)
            ],)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){},
                child:
                Text('Login',style: TextStyle(color: Colors.blue,fontSize: 26),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Remember me',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),),
                Text('Forgot password',style: TextStyle(color: Colors.blue,fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextDivider.horizontal(text: const Text('Or continue with')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account?',style:TextStyle(color:Colors.lightBlueAccent,fontSize: 22),
                  children:[
                    TextSpan(text: 'Sign up', style: TextStyle(color: Colors.blue,fontSize: 22),

                    )],
                ),
              ),
            ),
          )
        ],

      ),

    );
  }
}
