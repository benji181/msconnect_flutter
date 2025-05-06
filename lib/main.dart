import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "Benjamin";
  final double balance = 2500.00;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Card Demo',
      home: UserScreen(name: name, balance: balance),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserScreen extends StatelessWidget {
  final String name;
  final double balance;

  const UserScreen({Key? key, required this.name, required this.balance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-wallet'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: $name',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Balance: ₦${balance.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, color: Colors.green[700])),
                SizedBox(height: 20),
                ElevatedButton(

                  onPressed: () {
                    print("Send Money clicked for $name");
                  },
                  child: const Text("Send Money"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
