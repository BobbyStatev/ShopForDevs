import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/itemNotifier.dart';
import '../state/cartViewModel.dart';
import '../data/itemModel.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({
    Key key,
    this.itemModel,
  }) : super(key: key);

  final ItemModel itemModel;

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemNotifier.withCounter(
          itemModel.title,
          Provider.of<CartViewModel>(context, listen: false)
              .getCounter(itemModel.title)),
      child: ShopItemContainer(itemModel: itemModel),
    );
  }
}

class ShopItemContainer extends StatelessWidget {
  const ShopItemContainer({
    Key key,
    @required this.itemModel,
  }) : super(key: key);

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    log("shopItem");
    return ListTile(
      leading: Consumer<ItemNotifier>(builder: (context, item, child) {
        int counter = item.getCounter();
        log("Item counter");
        return Text('$counter', style: TextStyle(fontSize: 30));
      }),
      title: Text(itemModel.title),
      subtitle: Text(itemModel.subtitle),
      trailing: MaterialButton(
        onPressed: () {
          Provider.of<CartViewModel>(context, listen: false)
              .add(Provider.of<ItemNotifier>(context, listen: false));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
