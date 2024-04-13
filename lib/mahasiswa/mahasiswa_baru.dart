import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:rentku/mahasiswa/mahasiswa_screen.dart';

class MahasiswaBaru extends StatefulWidget {
  const MahasiswaBaru({Key? key}) : super(key: key);

  @override
  _MahasiswaBaruState createState() => _MahasiswaBaruState();
}

class _MahasiswaBaruState extends State<MahasiswaBaru> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _body = TextEditingController();
  final TextEditingController _nimmahasiswa = TextEditingController();
  final TextEditingController _namamahasiswa = TextEditingController();
  final TextEditingController _kelasmahasiswa = TextEditingController();

  bool _isFormIncomplete = false;

  Future<void> _tambahData() async {
    try {
      final Map<String, dynamic> newData = {
        'title': _title.text,
        'body': _body.text,
        'nim': _nimmahasiswa.text,
        'Nama': _namamahasiswa.text,
        'Kelas': _kelasmahasiswa.text,
      };

      final response = await http.post(
        Uri.parse('https://66038e2c2393662c31cf2e7d.mockapi.io/api/v1/news'),
        body: jsonEncode(newData),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Data berhasil ditambahkan
        print('Data berhasil dibuat');
        Navigator.pop(
            context); // Kembali ke halaman sebelumnya setelah berhasil menambahkan data
      } else {
        // Gagal menambahkan data
        print('Gagal menambahkan data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendaftaran Mahasiswa Baru'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey, // Mengaitkan GlobalKey dengan widget Form
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _title,
                    decoration:
                        InputDecoration(labelText: 'Jenis Pendaftaran :'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Isi jenis pendaftaran';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _body,
                    decoration:
                        InputDecoration(labelText: 'Program Pendidikan :'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Isi program pendidikan';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _namamahasiswa,
                    decoration:
                        InputDecoration(labelText: 'Nomor Induk Mahasiswa:'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Isi nomor induk mahasiswa';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _nimmahasiswa,
                    decoration: InputDecoration(labelText: 'Nama Mahasiswa:'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Isi nama mahasiswa';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _kelasmahasiswa,
                    decoration: InputDecoration(labelText: 'Kelas Mahasiswa'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Isi kelas mahasiswa';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _tambahData();
                      } else {
                        setState(() {
                          _isFormIncomplete = true;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue, // Atur warna teks tombol
                      minimumSize: Size(
                          30, 30), // Atur ukuran tombol sesuai kebutuhan Anda
                    ),
                    child: Text('Disimpan',
                        style: TextStyle(fontSize: 18)), // Atur ukuran teks
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 30, // Lebar tombol
                    height: 30, // Tinggi tombol
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MahasiswaScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        // Atur warna latar belakang tombol
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        // Atur ukuran tombol
                        minimumSize: Size(200,
                            50), // Anda dapat mengatur ukuran sesuai kebutuhan Anda
                      ),
                      child: Text('Batal',
                          style: TextStyle(fontSize: 18)), // Atur ukuran teks
                    ),
                  ),
                  if (_isFormIncomplete)
                    const Text(
                      'Harap isi semua bagian.',
                      style: TextStyle(color: Colors.red),
                    ),
                ],
              ),
            )),
      ),
    );
  }
}
