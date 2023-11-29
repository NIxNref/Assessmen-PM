import 'package:flutter/material.dart';

class AppBarse extends StatelessWidget {
  const AppBarse({super.key});

  void btnPress() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F6),
              shape: BoxShape.circle,
            ),
            child: FloatingActionButton(
              backgroundColor: const Color(0xFFF6F6F6),
              onPressed: (){
                Navigator.pushNamed(context, 'manage');
              },
              child: const Icon(Icons.menu, color: Colors.black),
            ),
          ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F6),
              shape: BoxShape.circle,
            ),
            child: FloatingActionButton(
              backgroundColor: const Color(0xFFF6F6F6),
              onPressed: () {
                Navigator.pushNamed(context, 'data');
              },
              child: const Icon(Icons.person, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
