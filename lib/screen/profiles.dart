import 'package:flutter/material.dart';

class Prfl extends StatelessWidget {
  const Prfl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          // First set of profile details
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  // Add your profile picture here
                  backgroundImage: AssetImage('assets/img/itsuki.jpg'),
                ),
                SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: 'Panji Nugroho',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [Colors.cyan, Colors.lightGreen],
                        ).createShader(
                          Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                        ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'https://github.com/NIxNref',
                  style: TextStyle(
                    fontSize: 16,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [Colors.red, Colors.yellow],
                      ).createShader(
                        Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                      ),
                  ),
                ),
                SizedBox(height: 16),
                // Add more profile details here

                ElevatedButton(
                  onPressed: () {
                    // Handle edit profile logic
                  },
                  child: Text('Edit Profile'),
                ),
              ],
            ),
          ),
          // Second set of profile details
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/img/itsuki.jpg',
                      width: double.infinity,
                      height: 270,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      text: 'Panji Nugroho',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [Colors.cyan, Colors.lightGreen],
                          ).createShader(
                            Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Perkenalkan nama saya Panji Nugroho, saat ini saya kelas 11 / kelas 2 di SMK Taruna Bhakti',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [Colors.red, Colors.yellow],
                          ).createShader(
                            Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 8),
            Text(
              '© Dibuat Oleh Panji Nugroho',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
