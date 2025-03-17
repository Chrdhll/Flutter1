import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageDetailBerita extends StatelessWidget {
  final Map<String, dynamic> itemBerita;
  const PageDetailBerita(this.itemBerita, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemBerita['judul'])),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  itemBerita['gambar'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemBerita['judul'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(itemBerita['tanggal']),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RatingBarIndicator(
                    rating: itemBerita['rating'].toDouble(),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(itemBerita['isi'], style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

