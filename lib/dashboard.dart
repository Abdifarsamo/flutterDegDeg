import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          toolbarHeight: 60,
          // centerTitle: true,
          title: Text("East Africa University",
              style: GoogleFonts.poppins(
                  fontSize: 17, fontWeight: FontWeight.bold)),
          // leading: Icon(
          //   Icons.menu,
          //   size: 35,
          // ),
          actions: [
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ],
          elevation: 0),
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            child: Text("Profile Menu"),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            Container(
              child: Image.asset('images/1.jpg'),
            ),
            Container(
              child: Image.asset(
                'images/2.jpg',
                fit: BoxFit.fill,
                // height: 420,
              ),
            )
          ],
        ),
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //       // mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(top: 1),
      //           child: Image.asset(
      //             'images/1.jpg',
      //             // height: 260,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             child: Text(
      //               'Welcome To East Africa University',
      //               style: TextStyle(color: Colors.white, fontSize: 18),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(top: 1),
      //           child: Image.asset(
      //             'images/2.jpg',
      //             // height: 260,
      //           ),
      //         ),
      //       ]),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.list),
          Icon(Icons.account_box),
        ],
      ),
    );
  }
}
