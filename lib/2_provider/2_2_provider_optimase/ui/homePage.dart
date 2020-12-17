import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import '../data/itemModel.dart';
import '../ui/shopItem.dart';
import '../state/cartViewModel.dart';
import '../data/shopRepository.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartViewModel(),
      child: MyHomePageContainer(title: title),
    );
  }
}

class MyHomePageContainer extends StatelessWidget {
  MyHomePageContainer({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    List<ItemModel> foodItems = ShopRepository().getFoodItems();
    List<ItemModel> drinkItems = ShopRepository().getDrinkItems();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
              icon: Badge(
                badgeContent:
                    Consumer<CartViewModel>(builder: (context, cart, child) {
                  return Text(cart.totalCount.toString());
                }),
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
                return ShopItem(itemModel: foodItems[index]);
              },
            ),
            ListView.builder(
              itemCount: drinkItems.length,
              itemBuilder: (context, index) {
                return ShopItem(itemModel: drinkItems[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
