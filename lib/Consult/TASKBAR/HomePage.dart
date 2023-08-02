import 'package:flutter/material.dart';
import 'package:sa/Consult/TASKBAR/rounded_navigation_bar.dart';
import '../Routes/Appointment.dart';
import '../Routes/Consult.dart';
import 'package:sa/Consult/chatpage.dart';
import '../Routes/Profile.dart';
import '../Routes/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> routes = [
    Home(),
    Appointment(),
    ChatPage(),
    Profile(),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FF),
      bottomNavigationBar: RoundedNavigationBar(
        tapCallback: (index) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
      body: routes[activeIndex],
    );
  }
}