import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Japan Places'),
      ),
      body: Center(child: Image.asset('images/honsu.jpg')
      ),
    );
  }
}
