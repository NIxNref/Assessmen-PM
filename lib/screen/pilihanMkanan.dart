import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Adjusted vertical and horizontal spacing
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
                  onTap: () {},
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/img/gado_gado.jpg",
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
                    child: Text(
                        "Bubur",
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
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Adjusted vertical and horizontal spacing
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
                  onTap: () {},
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
                    child: Text(
                        "Es Teh Manis",
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
                          "Rp. 5.000,00",
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
