import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================= ROOT APP =================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KulinerPage(),
    );
  }
}

// ================= MODEL =================
class Kuliner {
  final String nama;
  final String deskripsi;
  final String gambar;
  final double rating;
  final Color warna;
  final String caraBuat;

  Kuliner({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.rating,
    required this.warna,
    required this.caraBuat,
  });
}

// ================= HALAMAN UTAMA =================
class KulinerPage extends StatelessWidget {
  const KulinerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Kuliner> data = [
      Kuliner(
        nama: "Jepa",
        deskripsi: "Roti tradisional Mandar dari singkong/sagu",
        gambar: "assets/jepa.jpeg",
        rating: 4.8,
        warna: Colors.brown,
        caraBuat:
            "1. Parut singkong/sagu\n2. Peras airnya\n3. Bentuk adonan tipis\n4. Panggang di atas wajan panas sampai matang",
      ),
      Kuliner(
        nama: "Bau Peapi",
        deskripsi: "Ikan kuah kuning khas Mandar",
        gambar: "assets/peapi.jpeg",
        rating: 4.9,
        warna: Colors.orange,
        caraBuat:
            "1. Bersihkan ikan segar\n2. Tumis bumbu kuning\n3. Masukkan ikan\n4. Tambahkan air dan masak hingga matang",
      ),
      Kuliner(
  nama: "Sokkol Ubi",
  deskripsi: "Makanan tradisional Mandar berbahan dasar ubi/singkong dengan rasa gurih",
  gambar: "assets/sokkol.jpeg",
  rating: 4.7,
  warna: Colors.green,
  caraBuat:
      "1. Kupas dan parut ubi/singkong\n"
      "2. Peras airnya hingga agak kering\n"
      "3. Campur dengan sedikit garam\n"
      "4. Kukus hingga matang dan padat\n"
      "5. Sajikan dengan kelapa parut",
),
      
      Kuliner(
        nama: "Loka Anjoroi",
        deskripsi: "Pisang kuah santan manis",
        gambar: "assets/loka.jpeg",
        rating: 4.6,
        warna: Colors.yellow,
        caraBuat:
            "1. Rebus pisang\n2. Masak santan dengan gula merah\n3. Campurkan pisang\n4. Sajikan hangat",
      ),
      Kuliner(
        nama: "Ikan Asap Mandar",
        deskripsi: "Ikan asap tradisional khas Mandar",
        gambar: "assets/ikan.jpeg",
        rating: 4.8,
        warna: Colors.red,
        caraBuat:
            "1. Bersihkan ikan\n2. Lumuri garam\n3. Asap di atas kayu bakar\n4. Tunggu hingga matang dan kering",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("KULINER KHAS MANDAR"),
        backgroundColor: const Color.fromARGB(255, 253, 167, 141),
      ),

      // ================= COLUMN (WAJIB) =================
      body: Column(
        children: [
          // HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 253, 253, 253),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aneka Hidangan Tradisional Mandar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text("Jelajahi cita rasa khas Mandar dan cara pembuatannya"),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // LIST
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),

                    // ================= ROW (WAJIB) =================
                    child: Row(
                      children: [
                        // GAMBAR
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(item.gambar),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // INFO
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),

                            // ================= COLUMN (WAJIB) =================
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.nama,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  item.deskripsi,
                                  style: const TextStyle(fontSize: 12),
                                ),

                                const SizedBox(height: 8),

                                // ROW RATING
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.orange, size: 18),
                                    Text(" ${item.rating}"),
                                  ],
                                ),

                                const SizedBox(height: 5),

                                // BUTTON DETAIL
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text(item.nama),
                                          content: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child:
                                                      Image.asset(item.gambar),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(item.deskripsi),
                                                const SizedBox(height: 10),

                                                const Text(
                                                  "Cara Pembuatan:",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),

                                                const SizedBox(height: 5),

                                                Text(item.caraBuat),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: const Text("Tutup"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: const Text("Detail"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
