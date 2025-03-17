import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tugas1/Screen/nav_bar/page_detail_berita.dart';

class PageListView extends StatefulWidget {
  const PageListView({super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  //Data list berita
  List<Map<String, dynamic>> listBerita = [
    {
      "judul": "Judul berita 1",
      "isi":
          "Laboris aliquip esse eu occaecat est eu cillum culpa dolor aliquip reprehenderit. Eu voluptate anim minim laboris do excepteur consectetur esse consectetur commodo est nisi quis laborum. Incididunt irure culpa minim do. Qui et laboris duis nostrud mollit excepteur aliquip in nostrud ullamco ut occaecat occaecat. Anim incididunt culpa amet aliquip ad dolore nulla adipisicing dolor nulla dolore consectetur",
      "tanggal": "15 March 2025",
      "gambar": "images/berita1.jpeg",
      "rating": 5,
    },
    {
      "judul": "Judul berita 2",
      "isi":
          "Laboris aliquip esse eu occaecat est eu cillum culpa dolor aliquip reprehenderit. Eu voluptate anim minim laboris do excepteur consectetur esse consectetur commodo est nisi quis laborum. Incididunt irure culpa minim do. Qui et laboris duis nostrud mollit excepteur aliquip in nostrud ullamco ut occaecat occaecat. Anim incididunt culpa amet aliquip ad dolore nulla adipisicing dolor nulla dolore consectetur",
      "tanggal": "16 March 2025",
      "gambar": "images/berita2.jpeg",
      "rating": 4,
    },
    {
      "judul": "Judul berita 3",
      "isi":
          "Laboris aliquip esse eu occaecat est eu cillum culpa dolor aliquip reprehenderit. Eu voluptate anim minim laboris do excepteur consectetur esse consectetur commodo est nisi quis laborum. Incididunt irure culpa minim do. Qui et laboris duis nostrud mollit excepteur aliquip in nostrud ullamco ut occaecat occaecat. Anim incididunt culpa amet aliquip ad dolore nulla adipisicing dolor nulla dolore consectetur",
      "tanggal": "17 March 2025",
      "gambar": "images/berita3.jpeg",
      "rating": 3,
    },
    {
      "judul": "Judul berita 4",
      "isi":
          "Laboris aliquip esse eu occaecat est eu cillum culpa dolor aliquip reprehenderit. Eu voluptate anim minim laboris do excepteur consectetur esse consectetur commodo est nisi quis laborum. Incididunt irure culpa minim do. Qui et laboris duis nostrud mollit excepteur aliquip in nostrud ullamco ut occaecat occaecat. Anim incididunt culpa amet aliquip ad dolore nulla adipisicing dolor nulla dolore consectetur",
      "tanggal": "18 March 2025",
      "gambar": "images/berita4.jpg",
      "rating": 2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: listBerita.length,
          itemBuilder: (context, index) {
            return GestureDetector(
             onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailBerita(listBerita[index])));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          listBerita[index]['gambar'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listBerita[index]['judul'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(listBerita[index]['tanggal']),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RatingBarIndicator(
                                rating: listBerita[index]['rating'],
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                itemCount: 5,
                                itemSize: 15.0,
                                direction: Axis.horizontal,
                              ),
                              SizedBox(width: 20,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}