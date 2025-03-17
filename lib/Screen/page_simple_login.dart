import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:tugas1/Screen/page_get_login.dart';

class PageSimpleLogin extends StatefulWidget {
  const PageSimpleLogin({super.key});

  @override
  State<PageSimpleLogin> createState() => _PageSimpleLoginState();
}

class _PageSimpleLoginState extends State<PageSimpleLogin> {
  //controller
  TextEditingController etUsername = TextEditingController();
  TextEditingController etPassword = TextEditingController();

  //variabel untuk menampung data
  String nUsername = "";
  String nPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Simple Login'),
      ),

      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Form Login User',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),
            TextFormField(
              controller: etUsername, //proses get data dari controller
              decoration: InputDecoration(hintText: 'Input Username'),
            ),

            SizedBox(height: 10),
            TextFormField(
              controller: etPassword, //proses get data dari controller
              decoration: InputDecoration(hintText: 'Input Password'),
              obscureText: true,
            ),

            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                //proses untuk menampilkan data dari widget
                //proses di background
                setState(() {
                  nUsername = etUsername.text;
                  nPassword = etPassword.text;

                  //print data
                  print("username : " + nUsername + "password : " + nPassword);

                  //proses passing data
                  //buat satu file untuk menampung data
                  showToast(
                    'Username : $nUsername, Password : $nPassword',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageGetLogin(
                        username: nUsername,
                        password: nPassword,
                      ),
                    ),
                  );
                });
              },
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

