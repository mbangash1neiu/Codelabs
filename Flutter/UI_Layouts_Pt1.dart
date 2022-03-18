// https://romanejaquez.github.io/flutter-codelab1/#9

import 'package:flutter/material.dart';

final Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    )
  );
}

class SplashPage extends StatelessWidget { 
  
  @override
  Widget build(BuildContext context) { 
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MountsApp()));
    });
    return Container(
      color: mainColor, 
      child: Stack (
        children: [
          Align (
            alignment: Alignment.center,
            child: Icon(Icons.terrain, color: Colors.white, size: 90),
          ),//Align 
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
              )
             )
          )
        ],
      ) 
    ); 
  }
}
// add the landing page under the splash page code

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to Mounts of the World')
      ) // Center
    ); // Scaffold
  }
}

