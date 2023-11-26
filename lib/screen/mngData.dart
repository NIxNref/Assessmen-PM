import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:starbhak_fnb/screen/wdgtBarMng.dart';

class mngDatas extends StatefulWidget {
  const mngDatas({super.key});

  @override
  State<mngDatas> createState() => _mngDatasState();
}

class _mngDatasState extends State<mngDatas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BarMng(),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Container(
                height: 40.0,
                width: 150.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: FloatingActionButton(
                  backgroundColor: Color(0xFFF6F6F6),
                  onPressed: () {
                    Navigator.pushNamed(context, 'data');
                  },
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                      Text("Add Data"),
                      Icon(Icons.add), // Add your desired icon here
                      // SizedBox(width: 8), // Adjust the spacing as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('foto',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold)),
                Text('Nama Produk',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold)),
                Text('Harga',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold)),
                Text('Aksi',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // cart pertama
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // cart kedua
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // cart ketiga
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
