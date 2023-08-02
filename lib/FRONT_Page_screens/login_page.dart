import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sa/Consult/TASKBAR/HomePage.dart';
import './profile_page.dart';
import './register_page.dart';
import 'package:sa/FRONT_Page_screens/utils/fire_auth.dart';
import 'package:sa/FRONT_Page_screens/utils/validator.dart';
import 'package:sa/Self_ASSESSMENT/mainsa.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
          ),
      
        
      );
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _focusEmail.unfocus();
          _focusPassword.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "KIRAN",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
               
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            elevation: 1.00,
            backgroundColor: Color.fromARGB(197, 255, 99, 146),
            //  backgroundColor:linear-gradient(to bottom, #ff9933 0%, #ff99cc 100%);
          ),
          //backgroundColor:Colors.white,
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
              child: FutureBuilder(
                future: _initializeFirebase(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          Text(
                            'LOGIN',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 24.0),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
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
                                SizedBox(height: 8.0),
                                TextFormField(
                                  controller: _passwordTextController,
                                  focusNode: _focusPassword,
                                  obscureText: true,
                                  validator: (value) =>
                                      Validator.validatePassword(
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
                                SizedBox(height: 24.0),
                                _isProcessing
                                    ? CircularProgressIndicator()
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () async {
                                                _focusEmail.unfocus();
                                                _focusPassword.unfocus();

                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    _isProcessing = true;
                                                  });

                                                  User? user = await FireAuth
                                                      .signInUsingEmailPassword(
                                                    email: _emailTextController
                                                        .text,
                                                    password:
                                                        _passwordTextController
                                                            .text,
                                                  );

                                                  setState(() {
                                                    _isProcessing = false;
                                                  });

                                                  if (user != null) {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            //ProfilePage(
                                                              //  user: user),
                                                      HomePage(),
                                                      ),
                                                    );
                                                  } /*else {
                                                    child:
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    MyApp2(),
                                                          ),
                                                        );
                                                      },
                                                      /*child: Text(
                                                        'Self-ASSESSMENT Quiz',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0)),
                                                      ),*/
                                                    );
                                                  }*/
                                                }
                                              },
                                              child: Text(
                                                'Login',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 28.0),
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegisterPage(),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'Register',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
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
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
