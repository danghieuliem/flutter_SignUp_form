import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Đăng ký tài khoản'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void signUp() {
    log('aaaaaaaaa');
  }

  Widget _labelAndInput(String label, IconData icon, String exText) {
    return Column(children: <Widget>[
      Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(82, 86, 89, 0.4),
                  filled: true,
                  border: const OutlineInputBorder(),
                  hintText: exText,
                  prefixIcon: Icon(icon),
                ),
              ),
            ],
          )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: <Widget>[
          //hearder
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Thông Tin Tài Khoản',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          _labelAndInput('Email', Icons.email, 'Example@gmail.com'),
          _labelAndInput('Họ', Icons.account_circle, 'Nhập Họ và Tên Lót'),
          _labelAndInput('Tên', Icons.account_box, 'Nhập Tên'),
          _labelAndInput('Điện Thoại', Icons.call, 'Nhập Số Điện Thoại'),
          _labelAndInput('Mật Khẩu', Icons.lock, 'Nhập Mật Khẩu'),

          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 55.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Đăng Kí',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: signUp,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
