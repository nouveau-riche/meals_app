import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_screen.dart';

import 'favourite.dart';

class Tabscreen extends StatefulWidget {
  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  List<Widget> screens = [
    CategoryScreen(),
    FavouriteScreen(),
  ];

  int pageIndex = 0;

  void changeIndex(int index) {
    pageIndex = index;

    setState(() {});
    print(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Favourite'),
        ],
      ),
    );
  }
}
