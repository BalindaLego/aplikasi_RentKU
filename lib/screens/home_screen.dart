import 'package:flutter/material.dart';
import 'package:rentku/components/asset_image_widget.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 380, // Atur lebar sesuai kebutuhan
                  height: 50, // Atur tinggi sesuai kebutuhan
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Search',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Action when the card is tapped
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 0,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Cari',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Color(0xFF96E4F5), // Warna latar belakang
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        AssetImageWidget(
                          imagePath: 'assets/images/rental5.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          children: [
                            Text(" AriRentcar"),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Color(0xFF96E4F5), // Warna latar belakang
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        AssetImageWidget(
                          imagePath: 'assets/images/rental6.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          children: [
                            Text(" DanaRentcar"),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Color(0xFF96E4F5), // Warna latar belakang
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        AssetImageWidget(
                          imagePath: 'assets/images/rental7.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          children: [
                            Text(" BalRentcar"),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Color(0xFF96E4F5), // Warna latar belakang
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        AssetImageWidget(
                          imagePath: 'assets/images/rental8.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          children: [
                            Text(" AdeRentCar"),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 200, // Define the height
                width: MediaQuery.of(context).size.width, // Use full width
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: AssetImageWidget(
                        imagePath: 'assets/images/promo3.jpeg',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: AssetImageWidget(
                        imagePath: 'assets/images/promo4.jpeg',
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 10,),
                  Text("Ulasan Customer")
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Color(0xFF96E4F5), // Warna latar belakang
                        borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(
                          left: 6), // Tambahkan padding di sisi kiri
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 5,),
                          Text("Putri_Indah@gmailcom")
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25,),
                        Icon(Icons.star_sharp),
                        Icon(Icons.star_sharp),
                        Icon(Icons.star_sharp),
                        Icon(Icons.star_sharp),
                        Icon(Icons.star_sharp),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text(
                        "Setelah menggunakan jasa Rentku ini memudahkan saya untuk berkeliling bali menggunakan mobil")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
