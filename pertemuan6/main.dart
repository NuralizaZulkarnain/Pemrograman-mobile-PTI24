import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Labuan Bajo"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 1. IMAGE
            Image.asset(
              "assets/pantai_pink.jpg",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            // 🔹 BAGIAN UTAMA
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.pink.shade300,
              child: Column(
                children: [

                  // 🔹 2 & 3. TITLE + RATING
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pantai Pink",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Labuan Bajo, Nusa Tenggara Timur",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),

                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 4),
                          Text(
                            "4.7",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // 🔹 4. BUTTON SECTION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [

                      Column(
                        children: [
                          Icon(Icons.call, color: Colors.white),
                          SizedBox(height: 5),
                          Text(
                            "CALL",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Icon(Icons.navigation, color: Colors.orange),
                          SizedBox(height: 5),
                          Text(
                            "ROUTE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.lightGreenAccent),
                          SizedBox(height: 5),
                          Text(
                            "SHARE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // 🔹 5. DESCRIPTION
                  const Text(
                    "Pantai Pink merupakan salah satu pantai unik yang terletak di Labuan Bajo, "
                    "Nusa Tenggara Timur. Pantai ini memiliki pasir berwarna merah muda yang "
                    "jarang ditemukan di dunia. Keindahan
