import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange.shade800,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.orange.shade800, Colors.orange.shade500])),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [             
                 Center(
                  child: Text(
                  'Take a Seat',
                  textScaleFactor: 3,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courgette',
                  ),
              ),
                ),
              SizedBox(height:30.0),
               //SpinKitChasingDots
               SpinKitCircle
               (
                 color: Colors.white70,
                 ),
                 
              ],

            ),
          ),
        ),
      ),
    );
  }
}
/*body: Center(
        child: Container(
          child: const Text(
            'Take a Seat',
            textScaleFactor: 3,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Courgette',),
          ),
        ),
      ),*/