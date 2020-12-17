import 'itemModel.dart';

class ShopRepository {
  final List<ItemModel> _foodItems = [
    ItemModel(title: "Burger", subtitle: "Really tasty!"),
  ];

  final List<ItemModel> _drinkItems = [
    ItemModel(title: "Beer", subtitle: "The best in the town!"),
  ];

  List<ItemModel> getFoodItems() {
    return _foodItems;
  }

  List<ItemModel> getDrinkItems() {
    return _drinkItems;
  }
}
