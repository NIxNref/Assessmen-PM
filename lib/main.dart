import 'package:flutter/material.dart';
import 'package:starbhak_fnb/screen/cartData.dart';
import 'package:starbhak_fnb/screen/pilhanMenu.dart';
import 'package:starbhak_fnb/screen/mngData.dart';
import 'package:starbhak_fnb/screen/profiles.dart';
import 'package:starbhak_fnb/screen/splash_screen.dart';
import 'package:starbhak_fnb/screen/addData.dart';
// import 'package:starbhak_fnb/screen/list_menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'main': (context) => const pilihanMenu(),
        'data': (context) => const addDatas(),
        'manage': (context) => const mngDatas(),
        'cartPage': (context) => const cartDt(),
        'profiles': (context) => const Prfl(),
      },
    );
  }
}
