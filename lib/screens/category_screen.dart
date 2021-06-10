import 'package:flutter/material.dart';

import 'package:meals_app/data/category_list.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Categories'),
      ),
      drawer: Drawer(),
      body: GridView.builder(
        itemCount: categories_list.length,
        itemBuilder: (context,index) {
          return categories_list[index];
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }

}
