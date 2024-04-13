import 'package:flutter/material.dart';
import 'package:rentku/Rentcart/present_rentcar.dart';

class InputRentCar extends StatefulWidget {
  final RentCar rentCar;

  InputRentCar(this.rentCar);

  @override
  _InputRentCarState createState() => _InputRentCarState(this.rentCar);
}

class _InputRentCarState extends State<InputRentCar> {
  RentCar rentCar;
  TextEditingController namaRentalController = TextEditingController();
  TextEditingController alamatRentalController = TextEditingController();

  _InputRentCarState(this.rentCar);

  @override
  Widget build(BuildContext context) {
    namaRentalController.text = rentCar.nama_rental;
    alamatRentalController.text = rentCar.alamat_rental;

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Rental"),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: namaRentalController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nama Rental",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: alamatRentalController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Alamat Rental",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Simpan", textScaleFactor: 1.5),
                      onPressed: () {
                        rentCar.nama_rental = namaRentalController.text;
                        rentCar.alamat_rental = alamatRentalController.text;
                        print("Ini Update ya");
                        Navigator.pop(context, rentCar);
                      },
                    ),
                  ),
                  Container(width: 5.0),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Batal", textScaleFactor: 1.5),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
