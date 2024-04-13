import 'package:flutter/material.dart';
import 'package:rentku/components/asset_image_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetImageWidget(
                imagePath: 'assets/images/pp.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10), // Optional Spacer between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balinda',
                      style: TextStyle(fontSize: 18), // Customize text style as needed
                    ),
                    SizedBox(height: 5), // Optional Spacer between texts
                    Text(
                      'Balinda@gmail.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey), // Customize text style as needed
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Color.fromARGB(255, 170, 234, 247), // Customize divider color
          thickness: 1, // Customize divider thickness
          indent: 10, // Customize left indentation of the divider
          endIndent: 10, // Customize right indentation of the divider
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity, // Set the width to match parent
                child: Card(
                     color: Color(0xFF96E4F5), // Warna latar belakang
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.lock), // Add your icon here
                        SizedBox(width: 10), // Add space between icon and text
                        Text(
                          'Account', // Provide initial value if needed
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity, // Set the width to match parent
                child: Card(
                     color: Color(0xFF96E4F5), // Warna latar belakang
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.person), // Add your icon here
                        SizedBox(width: 10), // Add space between icon and text
                        Text(
                          'Personal', // Provide initial value if needed
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity, // Set the width to match parent
                child: Card(
                     color: Color(0xFF96E4F5), // Warna latar belakang
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.power_settings_new), // Add your icon here
                        SizedBox(width: 10), // Add space between icon and text
                        Text(
                          'Logout', // Provide initial value if needed
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('test'));
  }
}
