import 'package:flutter/material.dart';
import 'package:tugas1/Screen/latihan/dosen.dart';
import 'package:tugas1/Screen/latihan/latihan_gambar_dosen.dart';


class PageTab extends StatefulWidget {
  const PageTab({super.key});

  @override
  State<PageTab> createState() => _PageTabState();
}

class _PageTabState extends State<PageTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Latihan', style: TextStyle(color: Colors.white)),
      ),
      body: TabBarView(
        controller: tabController,
        children: [PageDosen(), PageGridDosen()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'Form dosen', icon: Icon(Icons.input),),
            Tab(text: 'Grid View', icon: Icon(Icons.grid_on),),
          ],
        )
      ),
    );
  }
}
