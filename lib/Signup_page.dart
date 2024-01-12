// ignore_for_file: duplicate_import

import 'package:new_app/successfullpage.dart';
import 'package:flutter/material.dart';
import 'package:new_app/successfullpage.dart';

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupForm(),
    );
  }
}
*/
class SignupForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  bool _isValidEmail(String email) {
    // Define a regular expression for email validation
    final RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }

  String _name = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'SIGNUP FORM',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: 'Courier New'),
        ),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/12345.jpg"),
                fit: BoxFit.cover),
          ), //center
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 25, fontFamily: 'serif'),
                    ),
                    //scrollPadding: EdgeInsets.symmetric(horizontal: 50),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 25, fontFamily: 'serif'),
                    ),
                    
                    // email validation checks 
                    
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!_isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }

                      // email validation checks 
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 25, fontFamily: 'serif'),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      // Add password validation checks if needed
                      return null;
                    },
                    onSaved: (value) {
                      _password = value!;
                    },
                  ),
                  SizedBox(height: 150),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _showLoginSuccessDialog(context);
                        print("Success");
                        emailcontroller.clear();
                        passController.clear();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const successfullpage();
                            },
                          ),
                        );
                      }

                      /* onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _showLoginSuccessDialog(context);
                          print("Success");
                          emailcontroller.clear();
                          passController.clear();
                        }
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const successfullpage();
                          },
                        ),
                      );
                        
                      };*/

                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Perform signup logic with the captured data
                        print('Name: $_name');
                        print('Email: $_email');
                        print('Password: $_password');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        primary: Colors.black,
                        fixedSize: Size(200, 50),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 24, 23, 23),
                        )),
                    child: const Text('SIGN UP'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showLoginSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Success"),
          content: Text("You have Successfully Signed in"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            successfullpage())); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

/*bool isValidEmail(String email) {
    // Use a regular expression to validate email format
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }
  */
}
