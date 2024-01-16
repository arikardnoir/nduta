import 'package:driverapp/screens/welcome%20screens/confirm_number_screen.dart';
import 'package:driverapp/screens/welcome%20screens/enter_number_screen.dart';
import 'package:driverapp/screens/welcome%20screens/logo_screen.dart';
import 'package:driverapp/screens/welcome%20screens/start_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/logo',
      routes: {
        '/logo':(context) => const LogoScreen(), 
        '/start': (context) => const StartScreen(),    
        '/enter': (context) => const EnterNumberScreen(),   
        '/confirm': (context) => const ConfirmNumberScreen(),      
      }
    );
  }
}

