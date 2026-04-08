import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Perempuan',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Inspirasi Wanita'),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink.shade100,
                Colors.pink.shade50,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 80,
                        color: Colors.pink,
                      ),

                      SizedBox(height: 20),

                      // 🔽 JUDUL
                      Text(
                        'Selamat Datang Girls',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 15),

                      // 🔽 DESKRIPSI
                      Text(
                        'Aplikasi ini dibuat untuk menginspirasi perempuan agar terus belajar, berkembang, dan percaya diri.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),

                      SizedBox(height: 20),

                      Divider(),

                      SizedBox(height: 10),

                      Text(
                        'Be strong, be confident, be you 🌸',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.pink.shade400,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 20),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 12),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Mulai Belajar',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
