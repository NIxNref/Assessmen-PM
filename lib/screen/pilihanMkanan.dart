import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class pilihmkn extends StatelessWidget {
  const pilihmkn({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: const EdgeInsets.only(right: 2, left: 2),
            margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20), // Adjusted vertical and horizontal spacing
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 4),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FullScreenDialogMkn(),
                          fullscreenDialog: true,
                        ));
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/img/gado-gado.jpg",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: Text("Bubur",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ))),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp.10.000,00",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        const Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.blue,
                          size: 30,
                        )
                      ],
                    ))
              ],
            ),
          ),
        for (int i = 1; i <= 2; i++)
          Container(
            padding: const EdgeInsets.only(right: 2, left: 2),
            margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20), // Adjusted vertical and horizontal spacing
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 4),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FullScreenDialogMinum(),
                          fullscreenDialog: true,
                        ));
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/img/iced_tea.jpg",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: Text("Gado Gado",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ))),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp. 15.000,00",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        const Icon(
                          Icons.add_circle,
                          color: Colors.green,
                        )
                      ],
                    ))
              ],
            ),
          ),
      ],
    );
  }
}

class FullScreenDialogMkn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Detail Produk'),
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      "assets/img/gado-gado.jpg",
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: LikeButton(
                  mainAxisAlignment: MainAxisAlignment.end,
                  size: 32,
                  bubblesColor: BubblesColor(
                      dotPrimaryColor: Colors.blue,
                      dotSecondaryColor: Colors.red),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: Text("Gado Gado",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))),
              Text(
                "Rp. 15.000,00",
                style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Text(
                "Gado Gado adalah makanan khas indonesia yang berasal dari jakarta",
                style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FullScreenDialogMinum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Detail Produk'),
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      "assets/img/iced_tea.jpg",
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: LikeButton(
                  mainAxisAlignment: MainAxisAlignment.end,
                  size: 32,
                  bubblesColor: BubblesColor(
                      dotPrimaryColor: Colors.blue,
                      dotSecondaryColor: Colors.red),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: Text("Es Teh Manis",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))),
              Text(
                "Rp. 5.000,00",
                style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Text(
                "Teh manis adalah minuman yang terbuat dari seduhan teh yang di tambahkan gula",
                style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
