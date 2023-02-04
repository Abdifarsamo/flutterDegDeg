import 'package:eau_1/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text('East Africa University'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // image logo code start her
              Container(
                padding: EdgeInsets.only(bottom: 0.05),
                child: Center(
                  child: Image.asset(
                    'images/logo.png',
                    height: 150,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/a.png',
                  // height: 0,
                ),
              ),
              // welcome text code start here

              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.blue,
                  //     spreadRadius: 1,
                  //     blurRadius: 8,
                  //     offset: Offset(1, 2),
                  //   )
                  // ],
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'East Africa University is a non-for-profit institution university in the autonomous Puntland state in northeastern Somalia, as well as in neighbouring Somaliland.',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  //     TextStyle(
                  //   fontWeight: FontWeight.w600,
                  //   fontSize: 20,
                  //   color: Colors.white,
                  // ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => secpage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900], //background color of button
                      // side: BorderSide(
                      //     width: 3,
                      //     color: Color.fromARGB(
                      //         255, 5, 68, 119)), //border width and color
                      // elevation: 50, //elevation of button
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                          //to set border radius to button
                          // borderRaius: BorderRadius.circular(30)
                          ),
                      // padding:
                      //     EdgeInsets.all(20) //content padding inside button
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        " GET STARTED NOW ",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        // TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              // Container(
              //   decoration:
              //       BoxDecoration(borderRadius: BorderRadius.circular(55)),
              //   padding: EdgeInsets.all(25),
              //   color: Colors.blue[900],
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         padding: EdgeInsets.all(10.0),
              //       ),
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => secpage()),
              //         );
              //       },
              //       child: Container(
              //         padding: EdgeInsets.only(left: 50, right: 50),
              //         child: Text(
              //           'GET START NOW',
              //           style: GoogleFonts.poppins(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         ),
              //       )),
              // ),
            ],
          ),
        ));
  }
}
