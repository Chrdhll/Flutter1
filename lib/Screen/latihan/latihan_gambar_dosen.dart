import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:tugas1/Screen/latihan/page_detail_dosen.dart';
import 'package:tugas1/Screen/nav_bar/page_detail_movie.dart';



class PageGridDosen extends StatefulWidget {
  const PageGridDosen({super.key});

  @override
  State<PageGridDosen> createState() => _PageGridDosenState();
}

class _PageGridDosenState extends State<PageGridDosen> {
  //Data List Movie
  List<Map<String, dynamic>> listDosen = [
    {"nidn": "123", "nama": "Dosen 1", "email" : "F4c2w@example.com", "gambar": "images/pic1.jpeg"},
    {"nidn": "234", "nama": "Dosen 2", "email" : "dafasd@example.com", "gambar": "images/pic2.jpeg"},
    {"nidn": "567", "nama": "Dosen 3", "email" : "dfasdf@example.com", "gambar": "images/berita1.jpeg"},
    {"nidn": "789", "nama": "Dosen 4", "email" : "hthee@example.com", "gambar": "images/berita2.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: listDosen.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailDosen(listDosen[index])));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset(
                        listDosen[index]["gambar"],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Text(
                              "Gambar tidak ditemukan",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Column(
                      children: [
                        Text(
                          listDosen[index]["nidn"], style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          listDosen[index]["nama"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          listDosen[index]["email"], style: TextStyle(fontSize: 16),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

