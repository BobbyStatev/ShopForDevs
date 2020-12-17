import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'shopItem.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Badge(
              badgeContent: Text('$_counter'),
              child: Icon(Icons.shopping_bag_outlined),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ShopItem(
              updateFunction: _incrementCounter,
              title: Text("Beer"),
              subtitle: Text("The best in the town!")),
          ShopItem(
              updateFunction: _incrementCounter,
              title: Text("Burger"),
              subtitle: Text("Really tasty!"))
        ],
      ),
    );
  }
}
