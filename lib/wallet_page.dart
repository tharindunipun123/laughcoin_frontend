import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  final TextEditingController _withdrawAmountController = TextEditingController();
  final TextEditingController _withdrawBalanceController = TextEditingController();
  final TextEditingController _depositBNBController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A), // Dark background color
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
                  'Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Withdraw Amount
            TextField(
              controller: _withdrawAmountController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Withdraw Amount',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xFF333333),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Withdraw Balance
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle deposit logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF155e75), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Deposit',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Deposit BNB
            TextField(
              controller: _depositBNBController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Deposit BNB',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xFF333333),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Deposit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle deposit logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF155e75), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Deposit',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
