/*import 'dart:io';

import 'package:flutter/material.dart';


class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {

  File: Image;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}



import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:camera/camera.dart';

import 'package:http/http.dart' as http;

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  File? _image;

  CameraController? _cameraController;

  // ignore: unused_field
  final ImagePicker _picker = ImagePicker();

  //..................................................
 
  
  List<CameraDescription> cameras = [];

@override
void initState() {
  super.initState();
  availableCameras().then((availableCameras) {
    final camera = availableCameras.first; // You can choose the appropriate camera here
    
    
    
    cameras = availableCameras;
  });




  
}


//............................................


  

  Future<void> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      setState(() {
        _image = File(result.files.single.path!);
      });
    }
  }

//...............................................

Future<void> _takePicture() async {
  final CameraController controller = CameraController(
    cameras[0], // You can choose the appropriate camera here
    ResolutionPreset.medium,
  );
  await controller.initialize();

  final XFile image = await controller.takePicture();
  setState(() {
    _image = File(image.path);
  });
  await controller.dispose();
}

//....................................



//2


  Future<void> _uploadImage() async {
    if (_image == null) {
      return;
    }

    var uri = Uri.parse('YOUR_UPLOAD_URL');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('image', _image!.path));

    var response = await request.send();

    if (response.statusCode == 200) {
      // Upload successful, handle response
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('IMAGE UPLOADER', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, fontFamily: 'Courier New'),
        ),
      ),

      
      body: Center(

        
        child: Container(
        
            
            decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/b3.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _image != null
                  ? Image.file(
                      _image!,
                      height: 200,
                      width: 200,
                    )
                  : const Placeholder(
                      fallbackHeight: 200,
                      fallbackWidth: 200,
                    ),
              const SizedBox(height: 20),


              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('PICK IMAGE', style: TextStyle(fontSize: 20,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0), // Set button color
                  onPrimary: const Color.fromARGB(255, 0, 0, 0),
                  fixedSize: const Size(250, 70),
                  shape: StadiumBorder(),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Berliner',
                      fontSize: 18), // Set text color
                  //shape: StadiumBorder()
                    
                ),
              ),
        
              const SizedBox(height: 50),

//...................................................
ElevatedButton(
  onPressed: () async {
    await _takePicture();
  },
  child: Text('TAKE PICTURE', style: TextStyle(fontSize: 20, color: Colors.white)),
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 0, 0, 0),
    onPrimary: const Color.fromARGB(255, 0, 0, 0),
    fixedSize: const Size(250, 70),
    shape: StadiumBorder(),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Berliner',
      fontSize: 18,
    ),
  ),
),
              
//.........................................................
              /*ElevatedButton(
                onPressed: _uploadImage,
                child: const Text('Upload Image'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Set button color
                  onPrimary: const Color.fromARGB(255, 0, 0, 0),
                  fixedSize: const Size(300, 50),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Berliner'), // Set text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ), 
              */
            ],
          ),
        ),
      ),
    );
  }
}


*/