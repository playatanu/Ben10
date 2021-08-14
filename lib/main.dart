import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int aNum = 1;
  int i = 1;
  var aName = [
    'BIG CHILL',
    'ALIEN X ',
    'RATH',
    'CROMASTONE',
    'BRAINSTORM',
    'GOOP',
    'JETRAY',
    'HUMANGOUSAR',
    'LODESTAR',
    'FEEDBACK',
  ];
  var _name = 'BIG CHIL';
  String qrData = "controller";
  void _incrementCounter() {
    setState(() {
      aNum++;
      _name = aName[i++];

      if (i > 9) {
        i = 0;
      }

      if (aNum > 10) {
        aNum = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Image.asset(
          'images/ben10logo.png',
          fit: BoxFit.contain,
          height: 40,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[900],
        // leading: Icon(Icons.edit),
        // leadingWidth: 50,
        actions: [
          Image.asset(
            'images/omini.png',
            height: 40,
            width: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.blueGrey[100],
          ),
          margin: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  '$aNum',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: _incrementCounter,
                child: Image.asset(
                  'images/alien/alien$aNum.png',
                  height: 400,
                  width: 400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  '$_name',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* Image.asset(
                  'images/ben10.png',
                  height: 100,
                  width: 100,
                ), */