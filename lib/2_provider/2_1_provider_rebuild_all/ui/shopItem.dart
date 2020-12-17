import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/cartViewModel.dart';
import '../data/itemModel.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({
    Key key,
    this.itemModel,
  }) : super(key: key);

  final ItemModel itemModel;

  Widget build(BuildContext context) {
    CartViewModel cartViewModel =
        Provider.of<CartViewModel>(context, listen: false);
    int counter = cartViewModel.getCounter(itemModel.title);
    log("shopItem");
    return ListTile(
      leading: Text('$counter', style: TextStyle(fontSize: 30)),
      title: Text(itemModel.title),
      subtitle: Text(itemModel.subtitle),
      trailing: MaterialButton(
        onPressed: () {
          cartViewModel.add(itemModel.title);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
