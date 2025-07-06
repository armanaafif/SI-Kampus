import 'package:flutter/material.dart';
import 'login_mahasiswa.dart'; // Halaman login kamu

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Informasi UNW',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(), // Splash pertama kali
    );
  }
}

// =======================
// SplashScreen Component
// =======================
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Pindah ke Login setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginMahasiswa()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo kampus UNW dari URL
            Image.network(
              "https://unw.ac.id/_nuxt/unw.CC306KHJ.png",
              height: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              "Sistem Informasi Mahasiswa",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
