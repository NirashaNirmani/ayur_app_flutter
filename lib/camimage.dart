import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:new_app/verification.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({super.key});

  @override
  State<ImageUpload> createState() => _HomePageState();
}

class _HomePageState extends State<ImageUpload> {
  File? _imageFile;

  Future<File?> _pickImage(ImageSource source) async {
    final picker = ImagePicker();

    final image = await picker.pickImage(
      source: source,
    );

    if (image == null) return null;

    return File(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'IMAGE UPLOADER',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: 'Courier New'),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/123.jpg"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.28,
                ),
                ElevatedButton(
                  
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    foregroundColor: Colors.black,
                    fixedSize: const Size(250, 50),
                    shape: StadiumBorder(),
                    
                    

                  ),
                  onPressed: () {
              _getFromCamera(context);
            },
            
                 
                  //onPressed: () {  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CAPTURE IMAGE",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Helvetica'),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.camera_alt,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 0, 0).withOpacity(0),
                    foregroundColor: Colors.black,
                    shape: StadiumBorder(),
                    
                    fixedSize: const Size(250, 50),
                  ),
                  onPressed: () {
                _getFromGallery(context);
              },
              
                  //onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "UPLOAD IMAGE",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Helvetica'),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.image,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                /*Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: SizedBox(
                      height: 380,
                      child: Image.asset(
                        'assets/images/b2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            */
              ],
            ),
          ),
        ));
  }

  _getFromGallery(BuildContext context) async {
    final pickedImage = await _pickImage(ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
      /*if (!mounted) return;
      _snackBar(context);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VerificationPage(
                  imageFile: _imageFile!,
                )),
      );*/
    }
  }

  _getFromCamera(BuildContext context) async {
    final pickedImage = await _pickImage(ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
      
    }
  }
}



