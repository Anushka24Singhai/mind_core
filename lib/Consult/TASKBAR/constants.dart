import 'custom_icons_icons.dart';
import 'package:flutter/material.dart';

const List<IconData> kNavBarIcons = [
  CustomIcons.home,
  CustomIcons.note_alt,
  CustomIcons.chat,
  CustomIcons.account_box_rounded,
];

const Map<NavBarItem, String> kNavbarItems = {
  NavBarItem.home: 'Home',
  NavBarItem.Appointment: 'Tips',
  NavBarItem.Consult: 'Consult',
  NavBarItem.Profile: 'Profile',
};

const List<String> svgs = [
  'assets/images/onboard1.svg',
  'assets/images/onboard2.svg',
  'assets/images/onboard3.svg',
  'assets/images/onboard4.svg',
];

enum NavBarItem {
  home,
  Appointment,
  Consult,
  Profile,
}

const BoxShadow kCardBoxshadow = BoxShadow(
    color: const Color(0x137777FF),
    blurRadius: 5.0,
    spreadRadius: 8.0,
    offset: Offset(6.0, 5.0));
