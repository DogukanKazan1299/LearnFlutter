import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNumber = 1;

  int foodNumber = 1;

  int dessertNumber = 1;

  List<String> soupNames = ['Mercimek', 'Tarhana', 'Sebzeli', 'Düğün', 'Yayla'];
  List<String> foodNames = [
    'Karnıyarık',
    'Mantı',
    'Kurufasulye',
    'İçli Köfte',
    'Balık'
  ];
  List<String> dessertNames = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Pasta',
    'Dondurma'
  ];

  void refreshToFoods() {
    setState(() {
      soupNumber = Random().nextInt(5) + 1;
      foodNumber = Random().nextInt(5) + 1;
      dessertNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  refreshToFoods();
                },
                child: Image.asset('assets/corba_$soupNumber.jpg'),
              ),
            ),
          ),
          Text(
            soupNames[soupNumber - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  refreshToFoods();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Image.asset('assets/yemek_$foodNumber.jpg'),
              ),
            ),
          ),
          Text(
            foodNames[foodNumber - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                refreshToFoods();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Image.asset('assets/tatli_$dessertNumber.jpg'),
            ),
          )),
          Text(
            dessertNames[dessertNumber - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
