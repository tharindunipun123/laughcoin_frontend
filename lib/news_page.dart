import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
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
                  'Daily Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // News List
            Expanded(
              child: ListView(
                children: [
                  // News Item 1
                  ListTile(
                    tileColor: Color(0xFF333333),
                    title: Text(
                      'BOTH Network’s Innovative App...',
                      style: TextStyle(color: Color(0xFFcffafe)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  SizedBox(height: 22),
                  // News Item 2
                  ListTile(
                    tileColor: Color(0xFF333333),
                    title: Text(
                      'What To Expect When BOTH...',
                      style: TextStyle(color: Color(0xFFcffafe)),
                    ),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  // Add more ListTiles for additional news items
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
