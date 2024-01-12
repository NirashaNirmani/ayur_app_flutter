/*import 'package:flutter/material.dart';
import 'package:new_app/camimage.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController _verificationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter Verification Code:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: _verificationCodeController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform verification logic here
                String verificationCode = _verificationCodeController.text;
                // Add your verification logic here, e.g., check if the code is valid
                bool isVerified = validateVerificationCode(verificationCode);

                if (isVerified) {
                  // Verification successful, navigate to the next screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageUpload() // Replace with your success page
                    ),
                  );
                } else {
                  // Verification failed, display an error message
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Verification Failed'),
                        content: Text('Invalid verification code. Please try again.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }

  bool validateVerificationCode(String code) {
    // Add your verification logic here, e.g., compare the code with the expected value
    // Return true if the code is valid, otherwise return false
    return code == '1234'; // Replace '1234' with your expected verification code
  }
}*/