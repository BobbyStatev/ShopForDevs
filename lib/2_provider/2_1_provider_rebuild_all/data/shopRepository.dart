import 'itemModel.dart';

class ShopRepository {
  final List<ItemModel> _foodItems = [
    ItemModel(title: "Burger", subtitle: "Really tasty!"),
    ItemModel(title: "Soup", subtitle: "Healthy and delicious"),
    ItemModel(title: "Chicken with cabbage", subtitle: "Chick chirick"),
    ItemModel(title: "Potatoes with ham", subtitle: "Yammy"),
    ItemModel(title: "Spaghetti", subtitle: "Italian taste"),
    ItemModel(title: "Pizza", subtitle: "For ninjas"),
    ItemModel(title: "Chicken with broccoli", subtitle: "Chick chirick"),
    ItemModel(title: "Vegetarian Soup", subtitle: "Healthy and delicious"),
    ItemModel(title: "Cheesecake", subtitle: "Really sweet"),
    ItemModel(title: "Icecream", subtitle: "We all scream"),
  ];

  final List<ItemModel> _drinkItems = [
    ItemModel(title: "Beer", subtitle: "The best in the town!"),
    ItemModel(title: "Coca cola", subtitle: "Original"),
    ItemModel(title: "Tea", subtitle: "Tea time"),
    ItemModel(title: "Orange juice", subtitle: "100 percent"),
  ];

  List<ItemModel> getFoodItems() {
    return _foodItems;
  }

  List<ItemModel> getDrinkItems() {
    return _drinkItems;
  }
}
