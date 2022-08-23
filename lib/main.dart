// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
              child: QCuiz_Page(),
            ),
          )),
    );
  }
}

class QCuiz_Page extends StatefulWidget {
  const QCuiz_Page({Key? key}) : super(key: key);

  @override
  State<QCuiz_Page> createState() => _QCuiz_PageState();
}

class _QCuiz_PageState extends State<QCuiz_Page> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Welcome to QCuiz",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.green[600],
              child: Text(
                "True",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.red[600],
            child: Text(
              "False",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
        ))
      ],
    );
  }
}
