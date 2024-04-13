import 'package:flutter/material.dart';
import 'package:rentku/components/asset_image_widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AssetImageWidget(
                        imagePath: "assets/images/rental1.jpeg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("WayanRentcar"),
                          Text("Jl. Dewi Sartika")
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.bookmark)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AssetImageWidget(
                        imagePath: "assets/images/rental3.jpeg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("SuperRentcar"),
                          Text("Jl. Ambengan, Singaraja")
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.bookmark)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AssetImageWidget(
                        imagePath: "assets/images/rental2.jpeg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("PastiAman"),
                          Text("Jl. Ahmad Yani")
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.bookmark)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
