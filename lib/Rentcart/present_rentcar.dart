class RentCar {
  // Attributes
  late int _id;
  late String _nama_rental;
  late String _alamat_rental;

  // Constructor
  RentCar(this._id, this._nama_rental, this._alamat_rental);

  // Named Constructor fromMap
  RentCar.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama_rental = map['nama_rental'].toString();
    this._alamat_rental = map['alamat_rental'].toString();
  }

  // Getter methods
  int get id => _id;
  String get nama_rental => _nama_rental;
  String get alamat_rental => _alamat_rental;

  // Setter methods
  set nama_rental(String value) {
    _nama_rental = value;
  }

  set alamat_rental(String value) {
    _alamat_rental = value;
  }

  // Convert object attributes to Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama_rental'] = nama_rental;
    map['alamat_rental'] = alamat_rental;
    return map;
  }
}
