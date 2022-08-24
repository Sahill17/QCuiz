// ignore_for_file: deprecated_member_use, depend_on_referenced_packages
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qcuiz/home_page.dart';
import 'package:qcuiz/qcuiz_page.dart';

void main(List<String> args) {
  runApp(QCuiz());
}

class QCuiz extends StatefulWidget {
  const QCuiz({Key? key}) : super(key: key);

  @override
  State<QCuiz> createState() => _QCuizState();
}

class _QCuizState extends State<QCuiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            title: const Text(
              "QCuiz",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: HomePage(),
            ),
          )),
    );
  }
}
