import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jogging_app/shared/app_colors.dart';
import 'package:jogging_app/shared/assets.dart';
import 'package:jogging_app/shared/constants.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      bottomSheet: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 40),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppButton()
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.appColor,
        leading:  CircleAvatar(
          backgroundColor: Colors.brown,
          child: Icon(Icons.person),
        ),
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,


        body:Column(
        children: [
          // Profile Section
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFF5B57F3), // Purple background
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 60), // Space for status bar
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with actual image
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Andrew",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Beginner",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),

              Positioned(
                top: 60,
                left: 20,
                right: 20,
                child: Container(),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Progress Card
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total progress",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      progressItem(Icons.directions_run, "103.2", "km"),
                      progressItem(Icons.timer, "16.9", "hr"),
                      progressItem(Icons.local_fire_department, "1.5k", "kcal"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // Personal Parameters & Achievements
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                settingsItem(Icons.person, "Personal parameters"),
                SvgPicture.asset(AppAssets.trophy),
                SizedBox(height: 10),
              ],
            ),
          ),
          Spacer(),
          // Bottom Navigation Bar
          BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "Menu",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      );
 }
  // Progress Indicator Widget
  Widget progressItem(IconData icon, String value, String unit) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.orange),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          unit,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
  // Settings List Tile Widget
  Widget settingsItem(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 28),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        ],
      ),
    );
  }
}


