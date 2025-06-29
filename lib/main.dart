import 'package:flutter/material.dart';
import 'login_mahasiswa.dart'; // Halaman login awal

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
      home: const LoginMahasiswa(), // Halaman awal saat aplikasi dibuka
    );
  }
}
