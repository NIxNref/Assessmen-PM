import 'package:flutter/material.dart';
// import 'package:starbhak_fnb/screen/wdgtBarMng.dart';

class cartDt extends StatefulWidget {
  const cartDt({super.key});

  @override
  State<cartDt> createState() => _cartDtState();
}

class _cartDtState extends State<cartDt> {

  int _count = 1;
  int _count2 = 1;
  int _count3 = 1;

  void _incrementCount1() {
    setState(() {
      _count++;
    });
  }
  void _incrementCount2() {
    setState(() {
      _count2++;
    });
  }
  void _incrementCount3() {
    setState(() {
      _count3++;
    });
  }
  void _decrementCount1() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }
  void _decrementCount2() {
    if (_count2 < 1) {
      return;
    }
    setState(() {
      _count2--;
    });
  }
  void _decrementCount3() {
    if (_count3 < 1) {
      return;
    }
    setState(() {
      _count3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
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
                    onPressed: () {
                      Navigator.pushNamed(context, 'main');
                    },
                    child: const Icon(Icons.arrow_back_outlined, color: Colors.red),
                  ),
                ),
                const Text(
                  "Cart",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.bold),
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // cart pertama
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: const BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        const Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.add, size: 22),
                              onTap: _incrementCount1,
                              ),
                            Text(
                              '${_count}',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.remove, size: 22),
                              onTap: _decrementCount1,
                              ),
                          ],
                        ),
                        const Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const FloatingActionButton(
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: const BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        const Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.add, size: 22),
                              onTap: _incrementCount2,
                              ),
                            Text(
                              '${_count2}',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.remove, size: 22),
                              onTap: _decrementCount2,
                              ),
                          ],
                        ),
                        const Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const FloatingActionButton(
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50, // Set width as needed
                          height: 50, // Set height as needed
                          decoration: const BoxDecoration(
                            shape: BoxShape
                                .rectangle, // You can use other shapes like BoxShape.rectangle
                            image: DecorationImage(
                              fit: BoxFit.cover, // Adjust the fit as needed
                              image: AssetImage('assets/img/gado_gado.jpg'),
                            ),
                          ),
                        ),
                        const Text(
                          'Gado Gado',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.add, size: 22),
                              onTap: _incrementCount3,
                              ),
                            Text(
                              '${_count3}',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.remove, size: 22),
                              onTap: _decrementCount3,
                              ),
                          ],
                        ),
                        const Text(
                          'Rp. 12.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const FloatingActionButton(
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            Text(
              "Ringkasan Belanja",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            Text(
              "PPN 10%",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 150,),
            Text(
              "Rp. 3.600,00",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            )
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            Text(
              "Total Belanja",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 115,),
            Text(
              "Rp. 36.000,00",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            )
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            Text(
              "Total Pembayaran",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 70,),
            Text(
              "Rp. 39.600,00",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
              ),
            )
          ]),
        ],
      ),
    );
  }
}
