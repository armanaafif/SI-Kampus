import 'package:flutter/material.dart';
import 'profile_mahasiswa.dart';

class HomeMahasiswa extends StatelessWidget {
  const HomeMahasiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // ======= Header Biru Profil =======
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 30, color: Colors.grey),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi, Student!",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "Armana Afif Muhamad",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ======= Info Kampus =======
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Info Kampus",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // ======= Lihat Jadwal =======
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Lihat Jadwal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF90CAF9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined,
                          size: 50, color: Colors.white),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Lihat Jadwal Minggu Ini",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Selengkapnya",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios,
                          size: 16, color: Colors.white),
                    ],
                  ),
                ),
              ],
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
                  // Sudah di home
                },
              ),
              // Tombol Person bisa diklik
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileMahasiswaPage(),
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
          // Aksi tombol tengah jika mau
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.home, color: Color(0xFF1E88E5)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
