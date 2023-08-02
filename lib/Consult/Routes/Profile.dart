import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:sa/screens/profile_page.dart';
import 'package:sa/FRONT_Page_screens/utils/fire_auth.dart';
import 'package:sa/FRONT_Page_screens/utils/validator.dart';
import 'package:sa/Self_ASSESSMENT/mainsa.dart';
import 'package:sa/FRONT_Page_screens/register_page.dart';


void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(197, 255, 126, 165),
          title: Text('PROFILE'),
          centerTitle: true,
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
                  Color.fromARGB(230, 255, 255, 255),
                  Color.fromARGB(255, 255, 234, 234),
                  Color.fromARGB(255, 255, 234, 234),
                  Color.fromARGB(255, 255, 234, 234),
                 
                ],
              )),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                          
                              validator: (value) => Validator.validateName(
                                name: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Ani Singhai",
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

                              validator: (value) => Validator.validatePhoneNumber(
                                phoneNumber: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Age-19",
                                
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

                              validator: (value) => Validator.validateEmail(
                                email: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Female",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Phone No.- 7999304133",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "ani@gmail.com",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Sangam Colony Jabalpur",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Ongoing Pharmocotherapy",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Doctor incharge- Dr. Neha Hotani",
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
                 
                              obscureText: true,
                              validator: (value) => Validator.validatePassword(
                                password: value,
                              ),
                              decoration: InputDecoration(
                                hintText: "Next Appointment- 14/04/2022",
                                errorBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            
                            

                         
                                
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
