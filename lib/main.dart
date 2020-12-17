import 'package:flutter/material.dart';
//import '1_setState/1_1_setState/homePage.dart';
//import '1_setState/1_2_setState_between_widget/homePage.dart';
//import '1_setState/1_3_setState_between_screen/ui/homePage.dart';
//import '2_provider/2_1_provider_rebuild_all/ui/homePage.dart';
import '2_provider/2_2_provider_optimase/ui/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop for Devs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Shop for Devs'),
    );
  }
}
