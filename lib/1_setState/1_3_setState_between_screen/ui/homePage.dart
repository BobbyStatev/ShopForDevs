import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'shopItemView.dart';
import '../data/shopRepository.dart';
import '../data/itemModel.dart';

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
    List<ItemModel> foodItems = ShopRepository().getFoodItems();
    List<ItemModel> drinkItems = ShopRepository().getDrinkItems();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.food_bank)),
              Tab(icon: Icon(Icons.local_drink)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return ShopItem(
                    updateFunction: _incrementCounter,
                    title: Text(foodItems[index].title),
                    subtitle: Text(foodItems[index].subtitle));
              },
            ),
            ListView.builder(
              itemCount: drinkItems.length,
              itemBuilder: (context, index) {
                return ShopItem(
                    updateFunction: _incrementCounter,
                    title: Text(drinkItems[index].title),
                    subtitle: Text(drinkItems[index].subtitle));
              },
            ),
          ],
        ),
      ),
    );
  }
}
