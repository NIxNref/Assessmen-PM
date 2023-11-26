import 'package:flutter/material.dart';
import 'package:starbhak_fnb/screen/cartData.dart';
import 'package:starbhak_fnb/screen/pilhanMenu.dart';
import 'package:starbhak_fnb/screen/mngData.dart';
import 'package:starbhak_fnb/screen/splash_screen.dart';
import 'package:starbhak_fnb/screen/addData.dart';
// import 'package:starbhak_fnb/screen/list_menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'main': (context) => pilihanMenu(),
        'data': (context) => addDatas(),
        'manage': (context) => mngDatas(),
        'cartPage': (context) => cartDt()

      },
    );
  }
}
