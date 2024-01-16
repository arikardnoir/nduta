import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {

  @override
  void initState(){
    super.initState();
    Future.wait([
      Future.delayed(const Duration(milliseconds: 5000)),
    ]).then((value) =>  Navigator.of(context).pushReplacementNamed('/start'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png', 
          width: 240.0, 
          height: 200.0,
        ),
      ),
    );
  }
}