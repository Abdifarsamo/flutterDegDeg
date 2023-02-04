import 'package:eau_1/dashboard.dart';
import 'package:eau_1/homePage.dart';
import 'package:eau_1/login.dart';
import 'package:eau_1/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class connection extends StatelessWidget {
  const connection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return secpage();
            }
          }),
    );
  }
}
