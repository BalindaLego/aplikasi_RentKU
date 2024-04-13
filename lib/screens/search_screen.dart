import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage("assets/images/rental1.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage("assets/images/rental2.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage("assets/images/rental3.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage("assets/images/rental4.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
