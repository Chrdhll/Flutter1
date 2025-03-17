import 'package:flutter/material.dart';

class PageGetData extends StatelessWidget {
  //construktor untuk tampung data
  final int index;
  const PageGetData(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Get Data List ke $index'),
      ),
      body: Center(child: Text('Get Data Berita ke $index')),
    );
  }
}
