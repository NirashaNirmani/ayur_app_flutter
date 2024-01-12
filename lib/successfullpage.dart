// ignore_for_file: duplicate_import

import 'package:new_app/offers.dart';
import 'package:flutter/material.dart';
import 'package:new_app/offers.dart';
//import 'package:helawedakama/test.dart';

class successfullpage extends StatelessWidget {
  const successfullpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('SUCCESSFULL PAGE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, fontFamily: 'Courier New'),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/asdf.jpg"), fit: BoxFit.cover),
        ),
       
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/images/successImage.png", width: 300, height: 300),


            const SizedBox(height: 200),

              ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const offerspage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Colors.black,
                fixedSize: Size(200, 50),
                shape: StadiumBorder(),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  //color: Color.fromARGB(255, 204, 14, 14),
                ),
              ),
              child: const Text(
                "CONTINUE",
              ),
            ),

            ],

            
          ),

          
        ),
      ),


    );
  }
}

