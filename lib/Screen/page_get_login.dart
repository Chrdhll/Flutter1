import 'package:flutter/material.dart';

class PageGetLogin extends StatelessWidget {
  final String username;
  final String password;

  const PageGetLogin({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Get Login User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Anda sudah login', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Username: $username', style: TextStyle(fontSize: 16)),
            Text('Password: $password', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
