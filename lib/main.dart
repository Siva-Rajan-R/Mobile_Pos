import 'package:flutter/material.dart';
import 'package:mobile_pos/screens/account_screen/main_screen.dart';
import 'package:mobile_pos/screens/home_screen/main_screen.dart';
import 'package:mobile_pos/screens/inventory_screen/main_screen.dart';

void main() {
  runApp(const MobilePos());
}

class MobilePos extends StatelessWidget {
  const MobilePos({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile POS',
      routes: {
        '/':(context)=>HomeScreen(),
        '/account':(context)=>AccountScreen(),
        '/inventory':(context)=>InventoryScreen()
      },

    );
  }
}