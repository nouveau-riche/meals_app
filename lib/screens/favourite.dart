import 'package:flutter/material.dart';
import 'package:meals_app/main.dart';

class FavouriteScreen extends StatelessWidget {

  // final List<Widget> allReciepes;

  // FavouriteScreen({required this.allReciepes});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body:
      // allReciepes.isNotEmpty
      //     ? ListView(
      //         children: allReciepes,
      //       )
      //     :
        Center(child: Text('No items added yet!')),
    );
  }
}
