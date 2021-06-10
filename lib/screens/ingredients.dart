import 'package:flutter/material.dart';
import 'package:meals_app/widgets/recipe.dart';

import '../main.dart';

class Ingredients extends StatefulWidget {
  final String imageUrl;
  final String name;

  Ingredients({required this.name, required this.imageUrl});

  @override
  _IngredientsState createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              height: 250,
              width: double.infinity,
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Ingredients',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItem('4 Tomatoes'),
                    buildItem('1 Tablespoon Olive oil'),
                    buildItem('1 Onion'),
                    buildItem('250g Spaghetti'),
                    buildItem('1 Tablespoon Salt'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Steps',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildStep(
                        'Cut the onions and tomatoes into small peices.', 1),
                    buildStep('Boil some water.', 2),
                    buildStep('Add Salt.', 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {



          setState(() {
            isFavourite = !isFavourite;
            // myApp.favourites.add(
            //   Reciepe(
            //       name: widget.name,
            //       imageUr: widget.imageUrl,
            //       difficulty: 'Medium',
            //       money: 'Affordable'),
            // );
            //
            // print(myApp.favourites);
          });
        },



        backgroundColor: Colors.amber,
        child: isFavourite
            ? Icon(
                Icons.favorite,
                color: Colors.black,
              )
            : Icon(
                Icons.favorite_border_rounded,
                color: Colors.black,
              ),
      ),
    );
  }

  Widget buildItem(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 40,
      width: double.infinity,
      child: Center(
        child: Text(text),
      ),
      color: Colors.amber,
    );
  }

  Widget buildStep(String text, int count) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.redAccent,
            child: Text(
              '#$count',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 250,
            child: Text(
              text,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
