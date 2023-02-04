import 'dart:developer';

import 'package:eau_1/Thirdpage.dart';
import 'package:eau_1/forgot_pw_page.dart';
import 'package:eau_1/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart';

void main() {
  runApp(
    secpage(),
  );
}

class secpage extends StatefulWidget {
  const secpage({super.key});

  @override
  State<secpage> createState() => _secpageState();
}

class _secpageState extends State<secpage> {
  bool _obsecureShower = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
 
 login() async{
  try {
     var result = await FirebaseAuth.instance.signInWithEmailAndPassword( email: _email.text, password: _password.text);
  } catch (e) {
    print(e);
  }
 }
  //dispose fuction
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  //connection fuction
  Future signIn() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _email.text.trim(),
      password: _password.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text("Login Form"),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.only(bottom: 0.05),
                child: Center(
                  child: Image.asset(
                    'images/b.png',
                    height: 220,
                  ),
                ),
              ),
              //Hello Again!
              Text("HELLO AGAIN!",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 40, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome To Home Of Education",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //Email Texfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: _email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          border: InputBorder.none,
                          hintText: "Email",
                          labelText: 'Email'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Password Texfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: _password,
                      obscureText: _obsecureShower,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsecureShower =
                                    !_obsecureShower; //show password in if statment(shortcut)
                                // if (_obsecureShower == true) {
                                //   _obsecureShower = false;
                                // } else {
                                //   _obsecureShower = true;
                                // }
                              });
                            },
                            child: Icon(_obsecureShower
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Password",
                          labelText: "Password"),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Forgot Password Button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ForgotPasswordPage();
                        }));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //Sign In Button
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                      Navigator.push(context, MaterialPageRoute(builder: (_) => home()));
                    } ,
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue[900], //background color of button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                            //to set border radius to button
                            // borderRaius: BorderRadius.circular(30)
                            ),
                        padding: EdgeInsets.only(
                            left: 114,
                            right: 114) //content padding inside button
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        " Sign In ",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        // TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       return go();
              //     },
              //     child: Text("Sign In")),
              SizedBox(
                height: 25,
              ),
              //not a member ! Register Now
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                       
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Thirdpage()));
                      },
                      child: Text(
                        " Register Now",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void go() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
}
