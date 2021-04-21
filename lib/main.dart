import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String search;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text('App Search')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 5, right: 5),
            child: TextField(
              onSubmitted: (text) {
                setState(() {
                  search = text;
                });
              },
              decoration: InputDecoration(
                labelText: "Pesquisar",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
