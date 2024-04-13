import 'package:flutter/material.dart';
import 'package:rentku/Rentcart/EditRentcarPage.dart';
import 'package:rentku/Rentcart/helper_rentcar.dart';
import 'package:rentku/Rentcart/present_rentcar.dart';
import 'package:rentku/Rentcart/rentcar%20baru.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class RentCarScreen extends StatefulWidget {
  const RentCarScreen({Key? key}) : super(key: key);

  @override
  _RentCarScreenState createState() => _RentCarScreenState();
}

class _RentCarScreenState extends State<RentCarScreen> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<RentCar> rentCarList = [];

  @override
  void initState() {
    super.initState();
    updateListView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Rental'),
        leading: Icon(Icons.kitchen),
      ),
      body: SingleChildScrollView(
        child: createListView(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Tambah Rental',
        onPressed: () async {
          var rentCar = await navigateToEntryForm(context);
          if (rentCar != null) addRentCar(rentCar);
        },
      ),
    );
  }

  Future<RentCar?> navigateToEntryForm(BuildContext context) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return InputRentCar(RentCar(0, '', '')); // Create a new RentCar object
      }),
    );
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1!;
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Text(
              rentCarList[index].nama_rental,
              style: textStyle,
            ),
            subtitle: Text(rentCarList[index].alamat_rental),
            trailing: Wrap(
              spacing: 12, // space between two icons
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () async {
                    var rentCar =
                        await navigateToEditRentCarForm(context, rentCarList[index]);
                    if (rentCar != null) editRentCar(rentCar);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    deleteRentCar(rentCarList[index]);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<RentCar?> navigateToEditRentCarForm(
      BuildContext context, RentCar rentCar) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return EditRentCarPage(rentCar: rentCar);
      }),
    );
  }

  void addRentCar(RentCar rentCar) async {
    int result = await dbHelper.insert(rentCar);
    if (result > 0) {
      updateListView();
    }
  }

  void editRentCar(RentCar rentCar) async {
    int result = await dbHelper.update(rentCar);
    if (result > 0) {
      updateListView();
      print("Edit Rental RESULT: $result");
    }
  }

  void deleteRentCar(RentCar rentCar) async {
    int result = await dbHelper.delete(rentCar.id);
    if (result > 0) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<RentCar>> rentCarListFuture = dbHelper.getRentCarList();
      rentCarListFuture.then((rentCarList) {
        setState(() {
          this.rentCarList = rentCarList;
          this.count = rentCarList.length;
        });
      });
    });
  }
}
