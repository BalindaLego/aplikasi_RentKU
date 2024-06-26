import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:rentku/screen/login_screen.dart';
import 'package:rentku/screens/datas_screen.dart'; // Import halaman login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Tentukan halaman awal aplikasi sebagai halaman login
      home: Login(), // Mengarahkan ke halaman login
      routes: {
        '/datas-screen': (context) => const DatasScreen()
      }
    );
  }
}
