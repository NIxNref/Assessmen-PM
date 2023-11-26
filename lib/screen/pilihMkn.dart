import 'package:flutter/material.dart';

class plhMkn extends StatelessWidget {
  const plhMkn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70.0,
                width: 70.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/img/gado_gado.jpg'), // Replace 'your_image_file.png' with your actual image file
                    fit: BoxFit.cover,
                  ),
                  color: Color(0xFFF6F6F6),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              const SizedBox(
                  height: 20.0), // Adjusted spacing between the two containers
              Container(
                height: 70.0,
                width: 70.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/img/gado_gado.jpg'), // Replace 'your_image_file.png' with your actual image file
                    fit: BoxFit.cover,
                  ),
                  color: Color(0xFFF6F6F6),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              const SizedBox(
                  height: 20.0), // Adjusted spacing between the two containers
              Container(
                height: 70.0,
                width: 70.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/img/gado_gado.jpg'), // Replace 'your_image_file.png' with your actual image file
                    fit: BoxFit.cover,
                  ),
                  color: Color(0xFFF6F6F6),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}