import 'package:flutter/material.dart';
import 'package:starbhak_fnb/screen/BarWidget.dart';
import 'package:starbhak_fnb/screen/cartData.dart';
import 'package:starbhak_fnb/screen/pilihanMkanan.dart';
import 'package:starbhak_fnb/screen/pilihMkn.dart';

class pilihanMenu extends StatelessWidget {
  const pilihanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          AppBarse(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text(
              'Pilihan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          plhMkn(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Semua Menu",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          pilihmkn()
        ],
      ),
      drawer: const cartDt(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.shopping_cart,
            size: 28,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
