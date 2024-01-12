import 'package:new_app/successfullpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:helawedakama/constant.dart';
// ignore: duplicate_import
import 'package:new_app/successfullpage.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final passController = TextEditingController();

  bool passToggle = true;

  bool _isValidEmail(String email) {
    // Define a regular expression for email validation
    final RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'LOGIN PAGE',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: 'Courier New'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/12345.jpg"), fit: BoxFit.cover),
        ),

        //center
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontSize: 25, fontFamily: 'serif', color: Colors.black),
                  ),
                  //scrollPadding: EdgeInsets.symmetric(horizontal: 50),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Username';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _username = value!;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 25, fontFamily: 'serif', color: Colors.black),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    }
                    // Add more password validation checks if needed
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

                      passController.clear();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const successfullpage();
                          },
                        ),
                      );
                    }

                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Perform signup logic with the captured data
                      print('Name: $_username');

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
                    ),
                  ),
                  child: const Text('LOGIN'),
                ),
              ],
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
          content: Text("You have Successfully Logged in"),
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
}
