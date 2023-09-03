import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200, // Set the desired width
              height: 200, // Set the desired height
            ),
            // FlutterLogo(size: 150), // Replace with your logo widget

            SizedBox(height: 20),
            Text(
              'Your intelligent companion',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Button click logic
          },
          child: Text('Get Started'),
        ),
      ),
    );
  }
}
