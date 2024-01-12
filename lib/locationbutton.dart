// ignore_for_file: avoid_web_libraries_in_flutter

//import 'dart:html';
import 'package:flutter/material.dart';
//import 'package:new_app/Login_page.dart';
//import 'package:new_app/location.dart';
import 'package:new_app/locationtracking.dart';


class Searchlocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          ' LOCATION ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Courier New'),
        ),
      ),
      
        body: Center(
          child: Container(
        
            
            decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/b3.jpg"), fit: BoxFit.cover),
          ),
            child: Center(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  ElevatedButton(
                    onPressed: () {

                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const MyApp1();
                            },
                          ),
                        );
              
                      // Code to execute when the first button is pressed
                      print('First Button Pressed');
                    },
        
                  style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        primary: Colors.black.withOpacity(0.5),
                        fixedSize: Size(250, 70),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 24, 23, 23),
                        ),
                        ),
        
        
        
                    child: Text('LOCATION', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255),fontFamily: 'Helvetica'),),
                  ),
                  SizedBox(height: 40), // Adding some spacing between buttons
                  
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}





