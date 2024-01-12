// ignore_for_file: unused_import, duplicate_import

import 'dart:ffi';

import 'package:new_app/Login_page.dart';
import 'package:new_app/Signup_page.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Login_page.dart';
import 'package:new_app/Signup_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          ' ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Helvetica'),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/123.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 1),
              Image.asset(
                "assets/images/herbal.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //child: Center(
                child: Column(
                  children: [
                    //Text("...Join With Us...",style: TextStyle(fontSize: 20, fontFamily: 'cursive')),
                    const Text(
                      ". . . JOIN WITH US . . .",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 20, 18, 18),
                          fontFamily: 'cursive'),
                    ),

                    SizedBox( height: 100),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SignupForm();
                            },
                          ),
                        );
                      },
                      /*style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: StadiumBorder(),*/

                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        primary: Color.fromARGB(255, 12, 12, 12),
                        //fixedSize: Size(200, 50),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          //color: Color.fromARGB(255, 224, 92, 92),
                        ),
                      ),
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 25),

                        //minimumSize: Size(150, 50), // Set button size here
                      ),

                      /*child: const Text(
                          "SING UP",
                          style: TextStyle(fontSize: 30),
                        ),*/
                    ),

                    SizedBox(height: 10),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return LoginPage();
                            },
                          ),
                        );

                        //SizedBox(height: 130);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        primary: Color.fromARGB(255, 12, 12, 12),
                        //fixedSize: Size(200, 50),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 24, 23, 23),
                        ),
                      ),
                      child:
                          const Text("LOGIN", style: TextStyle(fontSize: 25)),
                    ),
                  ],
                ),
                // ),
                /*const SizedBox(
                height: 60,
              ),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}
