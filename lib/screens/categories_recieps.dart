import 'package:flutter/material.dart';

class CategoriesReciepes extends StatelessWidget {
  final String name;
  final List<Widget> allRecipes;

  CategoriesReciepes({required this.name, required this.allRecipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(name),
      ),
      body: allRecipes.length == 0
          ? Center(
              child: Text('No Reciepes added yet!'),
            )
          : ListView(
              children: allRecipes,
            ),
    );
  }
}
