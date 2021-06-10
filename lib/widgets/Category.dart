import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_recieps.dart';

class Category extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final List<Widget> allRecipes;

  Category(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.allRecipes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => CategoriesReciepes(
              name: name,
              allRecipes: allRecipes,
            ),
          ),
        );

        // Navigator.of(context).pushNamed('./favourite');

      },
      child: Container(
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [Colors.green, Colors.greenAccent],
          // ),
        ),
        child: Column(
          children: [
            Container(
              height: 160,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'MajorLeagueDuty'),
            ),
          ],
        ),
      ),
    );
  }
}
