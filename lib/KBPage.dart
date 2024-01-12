
import 'package:flutter/material.dart';


class SearchDetails extends StatelessWidget {
  

  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          ' SELECT IDENTIFICATION ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Helvetica'),
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
        
        
        
                    child: Text('SEARCH DISEASE', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255),fontFamily: 'Helvetica')),
                  ),
                  SizedBox(height: 40), // Adding some spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Code to execute when the second button is pressed
                      print('Second Button Pressed');
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
        
                    child: Text('SEARCH PLANT',style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255),fontFamily: 'Helvetica'),),
                  ),

              

                ],
              ),
            ),
          ),
        ),
      );
    
  }
}





