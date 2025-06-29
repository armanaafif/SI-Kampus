import 'package:flutter/material.dart';

class HomeDosen extends StatelessWidget {
  const HomeDosen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda Dosen'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Selamat datang Dosen UNW!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
