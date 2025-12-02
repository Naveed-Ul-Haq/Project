import 'package:flutter/material.dart';
import 'donor/screens/donor_dashboard.dart';
import 'recipient/screens/recipient_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P2P Blood Donation System',
      theme: ThemeData(primarySwatch: Colors.red),
      home: UserSelectorScreen(),
    );
  }
}

class UserSelectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select User Type")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("I am a Donor"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DonorDashboardScreen()),
              ),
            ),
            ElevatedButton(
              child: Text("I am a Recipient"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RecipientDashboardScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
