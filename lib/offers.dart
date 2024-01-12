// ignore_for_file: duplicate_import

import 'package:new_app/KBPage.dart';
import 'package:new_app/camimage.dart';
import 'package:new_app/locationbutton.dart';
import 'package:new_app/plantidentification.dart';
import 'package:flutter/material.dart';
import 'package:new_app/KBPage.dart';
import 'package:new_app/plantidentification.dart';
import 'package:new_app/uploadimage.dart';

class offerspage extends StatelessWidget {
  const offerspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          ' O F F E R S',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'Helvetica'),
        ),
      ),
      

      backgroundColor: Color.fromARGB(55, 14, 15, 99),
      body: Container(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 500,
                //color: Colors.deepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return ImageUpload();
                            },
                          ),
                        );
                        // Add your button's onPressed functionality here
                      },
                      icon: Image.asset(
                        "assets/icons/search.jpg",
                        height: 100,
                        width: 100,
                      ),

/*label: Padding(
              padding: EdgeInsets.only(top: 10), // Adjust the top padding
              child: Text('Button with Image'),
              */

                      label: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'PLANT IDENTIFICATION',
                            style: TextStyle(fontSize: 23),
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 74, 192, 80), // Set button color
                        onPrimary: const Color.fromARGB(255, 0, 0, 0), 
                        fixedSize: Size(370, 150),// 
                        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Berliner'),//Set text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),



                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SearchDetails();
                            },
                          ),
                        );
                      
                        // Add your button's onPressed functionality here
                      },
                      icon: Image.asset(
                        "assets/icons/icon3.jpg",
                        height: 100,
                        width: 100,
                      ),
                      label: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'HELAWEDAKAMA KNOWLEDGEBASE',
                            style: TextStyle(fontSize: 25),
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 61, 179, 71), // Set button color
                        onPrimary: const Color.fromARGB(255, 0, 0, 0),
                        fixedSize: Size(370, 150), 
                        textStyle: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Berliner'),// Set text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),



                    ElevatedButton.icon(
                      onPressed: () {
                        
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Searchlocation();
                            },
                          ),
                        );
                      
                        // Add your button's onPressed functionality here
                      


                        // Add your button's onPressed functionality here
                      },
                      icon: Image.asset(
                        "assets/icons/loca.png",
                        height: 100,
                        width: 100,
                      ),
                      label: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'INSERT LOCATION',
                            style: TextStyle(fontSize: 25),
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 48, 158, 48), // Set button color
                        onPrimary: Colors.black,
                        fixedSize: Size(370, 150),
                        textStyle: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Berliner'), // Set text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';


class offerspage extends StatelessWidget {
  const offerspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Container(
        child: Padding(
          
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              
              child: Container(
                                //child: Image.asset("assets/icons/icon2.jpg", height: 100, width: 100,),
                height: 300,
                color: Colors.deepPurple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  ElevatedButton.icon(onPressed: () {
                    Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SignupForm();
                  }, 
                          ),

                    ),   
                  },
                  ),
                ],
              ),
              
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          )


        
        ],
      ),
    );
  }
}

*/