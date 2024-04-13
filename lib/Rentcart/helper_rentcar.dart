import 'package:rentku/Rentcart/present_rentcar.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DbHelper {
  static late DbHelper _dbHelper;
  static late Database _database;

  DbHelper._createObject();

  factory DbHelper() {
    _dbHelper = DbHelper._createObject(); // Inisialisasi _dbHelper di sini
    _dbHelper.initDb(); // Initialize the database before returning the instance
    return _dbHelper;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'rentcar.db'; // Ubah nama file database
    var rentCarDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    _database = rentCarDatabase; // Set the _database field
    return rentCarDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE rentcar (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nama_rental TEXT, -- Ubah nama kolom
      alamat_rental TEXT -- Ubah nama kolom
    )
  ''');
  }

  Future<Database> get database async {
    return _database;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList =
        await db.query('rentcar', orderBy: 'nama_rental'); // Ubah nama tabel
    return mapList;
  }

  Future<int> insert(RentCar object) async {
    Database db = await this.database;
    Map<String, dynamic> mapWithoutId = object.toMap();
    mapWithoutId.remove('id'); // Hapus kolom 'id' dari peta
    int count = await db.insert('rentcar', mapWithoutId);
    return count;
  }

  Future<int> update(RentCar object) async {
    Database db = await this.database;
    int count = await db.update('rentcar', object.toMap(),
        where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db
        .delete('rentcar', where: 'id=?', whereArgs: [id]); // Ubah nama tabel
    return count;
  }

  Future<List<RentCar>> getRentCarList() async {
    var rentCarMapList = await select();
    int count = rentCarMapList.length;
    List<RentCar> rentCarList = []; // Ubah tipe objek
    for (int i = 0; i < count; i++) {
      rentCarList.add(RentCar.fromMap(rentCarMapList[i])); // Ubah tipe objek
    }
    return rentCarList;
  }
}
