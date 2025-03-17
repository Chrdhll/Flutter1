import 'package:flutter/material.dart';
import 'package:tugas1/Screen/page_get_data.dart';

class PageListData extends StatelessWidget {
  const PageListData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('List Data'),
      ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Judul Berita $index'),
            subtitle: Text('Detail Berita $index'),
            onTap: () {
              //proses passing data
              //buat satu file untuk menampung data
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>PageGetData(index)
              )
              );
            },
          );
        },
      ),
    );
  }
}
