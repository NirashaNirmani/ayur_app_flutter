//import 'dart:html';

// ignore_for_file: duplicate_import, unused_import

import 'package:new_app/Home.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Home.dart';
//import 'package:helawedakama/Home.dart';
import 'package:new_app/Login_page.dart';
//import 'package:flutter/services.dart';
//import 'package:helawedakama/Home.dart';
//import 'package:helawedakama/Login_page.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "W E L C O M E",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontFamily: 'Courier New'),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: const Color.fromARGB(255, 31, 30, 31),

        /*title: const Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),*/

        /*actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),)
        ],*/
      ),

    

      body: Center(
        child: Container(
          
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgrounddd.jpg"), fit: BoxFit.cover),
          ),
      
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              const Text(
                
                "HELAWEDAKAMA",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 248, 240, 240),
                    fontFamily: 'emoji'),
              ),
              const SizedBox(height: 40),
              Center(child: Image.asset("assets/images/herbalW.png")),
              const Text(
                "  ..Be your Own Doctor..",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "We Recommend Remedis...",
                style: TextStyle(
                    fontFamily: 'impact',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Home();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  primary: Color.fromARGB(255, 6, 6, 56).withOpacity(0.5),
                  fixedSize: Size(200, 50),
                  shape: StadiumBorder(),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 145, 28, 28)
                    //color: Color.fromARGB(255, 204, 14, 14),
                  ),
                ),
                child: const Text(
                  "CONTINUE",
                ),
              ),
      
              /*Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'login')
                  }, child: const Text('continue',style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    color: Colors.pink
                  ),
                  ),
                  ),
                ],
              ),*/
      
              /*Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow, 
                    borderRadius: BorderRadius.circular(5),
        
                  ),*/
            ],
          ),
        ),
      ),
    );
  }
}
