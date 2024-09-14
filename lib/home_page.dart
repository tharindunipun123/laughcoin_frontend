import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile section
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/R.c571d0e5d938a891fbe1630635ecc38f?rik=7wiUdBkzBOTtpA&pid=ImgRaw&r=0'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'koinmetricsusa@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            // Current balance section
            Center(
              child: Column(
                children: [
                  Text('Current Balance', style: TextStyle(color: Colors.white, fontSize: 24)),
                  Text('387.261 LGC', style: TextStyle(color: Color(0xFF22d3ee), fontSize: 36)),
                  Text('Earning rate +24.00 LGC/hr', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Referral code button
            Card(
              color: Color(0xFF155e75),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                  'Referral Code: koinmetricsusa',
                  style: TextStyle(color: Color(0xFFa5f3fc)),
                ),
                trailing: Icon(Icons.paste, color: Color(0xFFa5f3fc)),
                onTap: () {},
              ),
            ),
            // Invite friends button
            Card(
              color: Color(0xFF155e75),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                  'Invite Friends',
                  style: TextStyle(color: Color(0xFFa5f3fc)),
                ),
                leading: Icon(Icons.people, color: Color(0xFFa5f3fc), size: 30),
                onTap: () {},
              ),
            ),
            // Friends section
            SizedBox(height: 20),
            Text('Friends', style: TextStyle(color: Colors.white, fontSize: 24)),
            Text('No Friends Found', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
