
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/screens/homepage.dart';

class Login extends StatefulWidget {
  static String routeName='Login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.android_outlined,
                  size: 100,),
                SizedBox(height: 25,),
                Text('Hello Again!',
                    style:TextStyle(fontSize: 34,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 14,),
                Text('Welcome back to our app',style:
                TextStyle(
                    fontSize: 20
                ),),
                SizedBox(height: 54,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, Homepage.routeName);
                      },
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.deepPurple,

                        ),
                        child: Center(child: Text('Sign in',style: TextStyle(color: Colors.white,
                            fontSize: 20,fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'do not have an account?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}