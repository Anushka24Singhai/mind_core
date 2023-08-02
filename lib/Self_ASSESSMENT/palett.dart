import 'package:flutter/material.dart'; 
class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0x00ff00, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0x00e600 ),//10% 
      100: const Color(0x00cc00),//20% 
      200: const Color(0x00b300),//30% 
      300: const Color(0x009900),//40% 
      400: const Color(0x008000),//50% 
      500: const Color(0x006600),//60% 
      600: const Color(0x004c00),//70% 
      700: const Color(0x003300),//80% 
      800: const Color(0x001900),//90% 
      900: const Color(0x000000),//100% 
    }, 
  ); 
}
