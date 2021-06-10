import 'package:flutter/material.dart';

import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/favourite.dart';
import 'package:meals_app/screens/ingredients.dart';
import 'package:meals_app/screens/tab_screen.dart';
import 'package:meals_app/widgets/recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> favourites = [];

  void addReciepes(Reciepe reciepe) {
    setState(() {
      favourites.add(reciepe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabscreen(),


      routes: {
        './favourite': (ctx) => FavouriteScreen(),
        // './ingredients': (ctx) => Ingredients(),
      },



    );
  }
}
