import 'package:flutter/material.dart';

class PageDetailDosen extends StatelessWidget {
  //item movie
  final Map<String, dynamic> itemDosen;
  const PageDetailDosen(this.itemDosen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemDosen['nama'])),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  itemDosen['gambar'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(itemDosen['nidn'], style: TextStyle(fontSize: 16)),
              SizedBox(height: 15),
              Text(
                itemDosen['nama'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(itemDosen['email'], style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
