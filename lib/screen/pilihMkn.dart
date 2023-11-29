import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class plhMkn extends StatefulWidget {
  const plhMkn({super.key});

  @override
  _plhMknState createState() => _plhMknState();
}

class _plhMknState extends State<plhMkn> {
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory("All", "assets/img/gado_gado.jpg"),
          const SizedBox(width: 10),
          buildCategory("Makanan", "assets/img/gado_gado.jpg"),
          const SizedBox(width: 10),
          buildCategory("Minuman", "assets/img/iced_tea.jpg"),
        ],
      ),
    );
  }

  Widget buildCategory(String title, String imagePath) {
    bool isSelected = selectedCategory == title;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedCategory = title;
          });
        },
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blueAccent : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.transparent,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
