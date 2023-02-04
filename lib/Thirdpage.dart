import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eau_1/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eau_1/splash.dart';

class Thirdpage extends StatefulWidget {
  // final VoidCallbackAction showsecpage;
  const Thirdpage({
    super.key,
  });

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  register() async {
  try {
    var result = await FirebaseAuth.instance.createUserWithEmailAndPassword( email: _email.text, password: _password.text);
  } catch (e) {
    print(e);
  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text("Registration Form"),
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
                    'images/c.png',
                    height: 190,
                  ),
                ),
              ),
              //Hello Again!
              Text("HELLO There!",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 40, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Register Below With Your Details",
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
                          
                          hintText: "Email"),
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
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Password"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.grey[200],
              //         border: Border.all(color: Colors.white),
              //         borderRadius: BorderRadius.circular(12)),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 10.0),
              //       child: TextField(
                   
              //         obscureText: true,
              //         decoration: InputDecoration(
              //             prefixIcon: Icon(Icons.lock),
              //             border: InputBorder.none,
              //             hintText: "Confim Password"),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              //Sign In Button
              ElevatedButton(onPressed: (() => register()), child: Text("regester")),
              SizedBox(
                height: 25,
              ),
              //not a member ! Register Now
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have An Account? ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => secpage()));
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w900),
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
}
