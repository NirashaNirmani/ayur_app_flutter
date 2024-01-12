// ignore_for_file: duplicate_import

// ignore: unused_import
import 'package:new_app/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: unused_import
import 'package:new_app/Home.dart';
import 'package:new_app/camimage.dart';
import 'package:new_app/uploadimage.dart';
//import 'package:new_one/uploadimage.dart';

class plantUpload extends StatelessWidget {
  const plantUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: const Text(
          " ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        shadowColor: Colors.purple,
      ),



       body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/b3.jpg"), fit: BoxFit.cover),
        ),
         /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icons/search.jpg")),
         ),
         */

         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*const Text(
              "HELAWEDAKAMA",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 248, 240, 240),
                  fontFamily: 'arial'),
            ),*/
            
            const SizedBox(height: 100),
            Center(child: Image.asset("assets/icons/search.jpg",height: 150, width: 150)),
            /*const Text(
              "  Be your Own Doctor......",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            */


            const SizedBox(
              height: 300,
            ),
            
            /*const Text(
              "This ",
              style: TextStyle(
                  fontFamily: 'impact',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(height: 100),

            */

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ImageUpload();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                primary: Colors.black,
                fixedSize: Size(300, 50),
                shape: StadiumBorder(),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  //color: Color.fromARGB(255, 204, 14, 14),
                ),
              ),
              child: const Text(
                "UPLOAD AN IMAGE",
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
       );
      
    
  }
}
