import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
//import 'package:sa/screens/profile_page.dart';
import 'package:sa/FRONT_Page_screens/utils/fire_auth.dart';
import 'package:sa/FRONT_Page_screens/utils/validator.dart';
import 'package:sa/Self_ASSESSMENT/mainsa.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _dobTextController = TextEditingController();
  final _phoneNumberTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _cityTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();
  final _medicalRecordsTextController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusDOB = FocusNode();
  final _focusPhoneNumber = FocusNode();
  final _focusAddress = FocusNode();
  final _focusCity = FocusNode();
  final _focusConfirmPassword = FocusNode();
  final _focusMedicalRecords = FocusNode();

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _focusName.unfocus();
          _focusEmail.unfocus();
          _focusPassword.unfocus();
          _focusDOB.unfocus();
          _focusAddress.unfocus();
          _focusPhoneNumber.unfocus();
          _focusCity.unfocus();
          _focusMedicalRecords.unfocus();
          _focusConfirmPassword.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'REGISTER',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Color.fromARGB(197, 245, 52, 110),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: [
                  Color.fromARGB(230, 255, 167, 226),
                  Color.fromARGB(255, 255, 172, 186),
                  Color.fromARGB(197, 255, 221, 169),
                  Color.fromARGB(255, 255, 226, 164),
                ],
              )),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: _registerFormKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _nameTextController,
                              focusNode: _focusName,
                              validator: (value) => Validator.validateName(
                                name: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Name",
                                errorBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.0),
                                                        
                              TextFormField(
                              controller: _phoneNumberTextController,
                              focusNode: _focusPhoneNumber,
                              validator: (value) => Validator.validatePhoneNumber(
                                phoneNumber: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                
                                errorBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.0),
                            TextFormField(
                              controller: _emailTextController,
                              focusNode: _focusEmail,
                              validator: (value) => Validator.validateEmail(
                                email: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Email",
                                errorBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),


                            SizedBox(height: 16.0),
                            
                            TextFormField(
                              controller: _passwordTextController,
                              focusNode: _focusPassword,
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Password",
                                errorBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 32.0),
                            _isProcessing
                                ? CircularProgressIndicator()
                                : Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            setState(() {
                                              _isProcessing = true;
                                            });

                                            if (_registerFormKey.currentState!
                                                .validate()) {
                                              User? user = await FireAuth
                                                  .registerUsingEmailPassword(
                                                name: _nameTextController.text,
                                                email:
                                                    _emailTextController.text,
                                                password:
                                                    _passwordTextController
                                                        .text,
                                                dob: _dobTextController.text,
                                                phoneNumber:
                                                    _phoneNumberTextController
                                                        .text,
                                                address:
                                                    _addressTextController.text,
                                                city: _cityTextController.text,
                                                confirmPassword:
                                                    _confirmPasswordTextController
                                                        .text,
                                                medicalRecords:
                                                    _medicalRecordsTextController
                                                        .text,
                                                // dob: _dobTextController.text
                                              );

                                              setState(() {
                                                _isProcessing = false;
                                              });

                                              if (user != null) {
                                                Navigator.of(context)
                                                    .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        MyApp2(),
                                                  ),
                                                  ModalRoute.withName('/'),
                                                );
                                              }
                                            }
                                          },
                                          child: Text(
                                            'Sign up',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
