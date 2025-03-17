import 'package:flutter/material.dart';
import 'package:tugas1/Screen/latihan/dosen.dart';
import 'package:tugas1/Screen/latihan/page_tab.dart';
import 'package:tugas1/Screen/nav_bar/page_tab_bar.dart';
import 'package:tugas1/Screen/page_list_data.dart';
import 'package:tugas1/Screen/page_cache_image.dart';
import 'package:tugas1/Screen/page_dua.dart';
import 'package:tugas1/Screen/page_empat.dart';
import 'package:tugas1/Screen/page_gambar.dart';
import 'package:tugas1/Screen/page_notification.dart';
import 'package:tugas1/Screen/page_satu.dart';
import 'package:tugas1/Screen/page_simple_login.dart';
import 'package:tugas1/Screen/page_tiga.dart';
import 'package:tugas1/Screen/page_ulr_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pertama',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar : properti dari sebuah widget
        //AppBar : widget
        title: Text('Aplikasi Pertama', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "ini adalah flutter pertama saya",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    //ini untuk pindah page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageSatu()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page 1',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageDua()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: const Color(0xFF536DFE),
                  clipBehavior: Clip.antiAlias,
                  child: Text(
                    'page 2',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
                
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTiga()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page 3',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageEmpat()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page 4',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageGambar()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page gambar',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageUrlImage()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page url image',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageChacheImage(),
                      ),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page chache image',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageNotification(),
                      ),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page notification',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageListData()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page list data',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageSimpleLogin(),
                      ),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTabBar()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page tab bar',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTab()),
                    );
                  },
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //ini untuk pindah page
                  color: Colors.indigoAccent,
                  child: Text(
                    'page dosen',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  minWidth: 300,
                  height: 30,
                ),
              ),
            ],
          ),

          //child : cuma bisa nampung satu widget
          //children : bisa nampung beberapa widget
        ),
      ),
    );
  }
}
