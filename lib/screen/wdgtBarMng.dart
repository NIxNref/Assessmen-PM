import 'package:flutter/material.dart';

class BarMng extends StatelessWidget {
  const BarMng({super.key});

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
              shape: BoxShape.circle,
            ),
            child: FloatingActionButton(
              backgroundColor: const Color(0xFFF6F6F6),
              onPressed: (){
                Navigator.pushNamed(context, 'main');
              },
              child: const Icon(Icons.arrow_back_outlined, color: Colors.red),
            ),
          ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
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
