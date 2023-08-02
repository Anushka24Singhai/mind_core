import 'package:flutter/material.dart';
import 'Self_ASSESSMENT/palett.dart';

import 'FRONT_Page_screens/login_page.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOC-IN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //backgroundColor: const LinearGradient(colors: [Colors.blue, Colors.green]),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 249, 252),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 24.0,
            ),
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 38.0,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(fontSize: 28.0),
        ),
      ),
      home: LoginPage(),
    );
  }
}
