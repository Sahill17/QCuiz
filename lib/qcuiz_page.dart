import 'package:flutter/material.dart';
import 'qcuiz_work.dart';

QCuizWork ob = new QCuizWork();

class QCuiz_Page extends StatefulWidget {
  const QCuiz_Page({Key? key}) : super(key: key);

  @override
  State<QCuiz_Page> createState() => _QCuiz_PageState();
}

class _QCuiz_PageState extends State<QCuiz_Page> {
  get child => null;

  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //Question here
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      ob.getQue(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              //true option here
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
                    onPressed: () {
                      bool givenAnswer = ob.getans();
                      if (givenAnswer == true) {
                        print("yes");
                      } else
                        print("no");
                      setState(() {
                        ob.getno();
                      });
                    },
                  ),
                ),
              ),
              //false option here
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.red[600],
                    child: const Text(
                      "False",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      bool givenAnswer = ob.getans();
                      if (givenAnswer == false) {
                        print("yes");
                      } else
                        print("no");
                      setState(() {
                        ob.getno();
                      });
                    },
                  ),
                ),
              ),
              //Row here as a score keeper
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Row(
                  children: scoreKeeper,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
