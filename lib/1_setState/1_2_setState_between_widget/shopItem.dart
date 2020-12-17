import 'package:flutter/material.dart';

class ShopItem extends StatefulWidget {
  const ShopItem({
    Key key,
    this.updateFunction,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final Function updateFunction;
  final Widget title;
  final Widget subtitle;

  @override
  _ShopItemState createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('$_counter', style: TextStyle(fontSize: 30)),
      title: widget.title,
      subtitle: widget.subtitle,
      trailing: MaterialButton(
        onPressed: () {
          setState(() {
            _counter++;
            this.widget.updateFunction();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
