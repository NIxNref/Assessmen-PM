import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbhak_fnb/screen/pilhanMenu.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => pilihanMenu(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xf6f6f6ff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Starbhak F&B',
              style: GoogleFonts.caveat(
                color: Color.fromRGBO(80, 68, 68, 1),
                fontSize: 45,
              ),
            ),
            Text(
              'Selalu Memberikan Yang Terbaik',
              style: GoogleFonts.caveat(
                color: Color.fromRGBO(80, 68, 68, 1),
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromRGBO(80, 68, 68, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
