import 'package:flutter/material.dart';
import 'package:starbhak_fnb/screen/BarWidget.dart';
import 'package:starbhak_fnb/screen/cartData.dart';

class pilihanMenu extends StatelessWidget {
  const pilihanMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
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
                  height: 20.0,
                ), // Adjusted spacing between the two containers
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
                  height: 20.0,
                ), // Adjusted spacing between the two containers
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/gado_gado.jpg'),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the spacing between the image and text
                    Text(
                      'Bubur',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. 12.000,00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Null;
                      },
                      
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ), // Adjusted spacing between the two containers
              ],
            ),
          ),
        ],
      ),
      drawer: cartDt(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            Icons.shopping_cart,
            size: 28,
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
