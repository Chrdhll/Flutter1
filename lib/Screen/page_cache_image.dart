import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PageChacheImage extends StatelessWidget {
  const PageChacheImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Cache Image'),
    ),
    body: Center(child: CachedNetworkImage(
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7rPjVS1cyEQiuDeAzRS3yKlCg0Epnn6rsw&s',
      placeholder :(context, url) =>CircularProgressIndicator(),
      errorWidget :(context, url, error) =>Icon(Icons.error),
    ),
    ),
    );

  }
}