import 'package:flutter/material.dart';

class listMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 160.0,
                  width: 160.0,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70.0),
                  decoration: const BoxDecoration(
                    color: Colors.amber
                  )
                ),
                Container(
                  height: 160.0,
                  width: 160.0,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70.0),
                  decoration: const BoxDecoration(
                    color: Colors.amber
                  )
                ),
              ]
            )]
      )
    );
  }
}
