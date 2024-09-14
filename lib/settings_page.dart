import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A), // Set background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFF155e75),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Profile Card with Full Width
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFF333333),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://th.bing.com/th/id/R.c571d0e5d938a891fbe1630635ecc38f?rik=7wiUdBkzBOTtpA&pid=ImgRaw&r=0'), // Replace with your image asset path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Koinmetrics USA',
                    style: TextStyle(color: Color(0xFFa5f3fc), fontSize: 18),
                  ),
                  Text(
                    'koinmetricsusa@gmail.com',
                    style: TextStyle(color: Color(0xFFa5f3fc)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Settings Options
            Expanded(
              child: ListView(
                children: [
                  // Share Option
                  ListTile(
                    tileColor: Color(0xFF333333),
                    leading: Icon(Icons.share, color: Color(0xFFa5f3fc)),
                    title: Text(
                      'Share',
                      style: TextStyle(color: Color(0xFFa5f3fc)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  SizedBox(height: 16), // Space between cards
                  // Edit Profile Option
                  ListTile(
                    tileColor: Color(0xFF333333),
                    leading: Icon(Icons.edit, color: Color(0xFFa5f3fc)),
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(color: Color(0xFFa5f3fc)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  SizedBox(height: 16), // Space between cards
                  // KYC Option
                  ListTile(
                    tileColor: Color(0xFF333333),
                    leading: Icon(Icons.assignment, color: Color(0xFFa5f3fc)),
                    title: Text(
                      'Last Transactions',
                      style: TextStyle(color: Color(0xFFa5f3fc)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  SizedBox(height: 16), // Space between cards
                  // Logout Option
                  ListTile(
                    tileColor: Color(0xFF333333),
                    leading: Icon(Icons.logout, color: Color(0xFFa5f3fc)),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Color(0xFFa5f3fc)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  SizedBox(height: 16), // Space between cards
                  // Delete Account Option
                  ListTile(
                    tileColor: Color(0xFF333333),
                    leading: Icon(Icons.delete, color: Color(0xFFa5f3fc)),
                    title: Text(
                      'Delete Account',
                      style: TextStyle(color: Color(0xFFa5f3fc)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
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
