import 'package:flutter/material.dart';
import 'package:rentku/Rentcart/present_rentcar.dart';

class EditRentCarPage extends StatefulWidget {
  final RentCar rentCar;

  EditRentCarPage({required this.rentCar});

  @override
  _EditRentCarPageState createState() => _EditRentCarPageState();
}

class _EditRentCarPageState extends State<EditRentCarPage> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _namaController.text = widget.rentCar.nama_rental;
    _alamatController.text = widget.rentCar.alamat_rental;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Rental'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(labelText: 'Nama Rental'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _alamatController,
                decoration: InputDecoration(labelText: 'Alamat Rental'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _saveChanges();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Lebar minimum tombol
                  ),
                  child:
                      Text('Simpan Perubahan', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Lebar minimum tombol
                  ),
                  child: Text('Batal', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Metode untuk menyimpan perubahan
  void _saveChanges() {
    // Mendapatkan nilai terbaru dari TextFormField
    String namaRental = _namaController.text;
    String alamatRental = _alamatController.text;

    // Membuat objek RentCar baru dengan nilai terbaru
    RentCar updatedRentCar = RentCar(
      widget.rentCar.id,
      namaRental,
      alamatRental,
    );

    // Mengembalikan nilai RentCar yang diperbarui ke halaman sebelumnya
    Navigator.pop(context, updatedRentCar);
  }
}
