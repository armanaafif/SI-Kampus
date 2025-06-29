import 'package:flutter/material.dart';
import 'home_mahasiswa.dart';

class ProfileMahasiswaPage extends StatelessWidget {
  const ProfileMahasiswaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Profile Mahasiswa",
          style: TextStyle(
            color: Colors.white, // Ubah warna tulisan jadi putih
            fontWeight: FontWeight.bold, // Opsional: biar lebih tebal
          ),
        ),
        backgroundColor: const Color(0xFF1E88E5),
      ),
      body: Column(
        children: [
          // ======= Header Biru Profil =======
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Armana Afif Muhamad",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "NIM: 144231010",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // ======= Konten Profil (contoh) =======
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Informasi lengkap mahasiswa ditampilkan di sini.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),

      // ======= Bottom Navigation Bar =======
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF1E88E5),
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Tombol Home
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeMahasiswa(),
                    ),
                    (route) => false,
                  );
                },
              ),
              // Tombol Person (sudah di profil)
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white, size: 30),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Anda sudah berada di halaman profil'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeMahasiswa(),
            ),
            (route) => false,
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.home, color: Color(0xFF1E88E5)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); //
  }
}
