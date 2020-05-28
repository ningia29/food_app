import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../commons.dart';
import 'custom_text.dart';
import 'package:foodapp/src/models/category_model.dart';

List<CategoryModel> categoriesList = [
  CategoryModel(name: "Salad", image: "salad.png"),
  CategoryModel(name: "Steak", image: "steak.png"),
  CategoryModel(name: "Fast food", image: "sandwich.png"),
  CategoryModel(name: "Desserts", image: "ice-cream.png"),
  CategoryModel(name: "Beer", image: "pint.png"),
  CategoryModel(name: "Sea food", image: "fish.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red[50],
                          offset: Offset(4, 6),
                          blurRadius: 20,
                        )
                      ],
                    ),
                    child: Padding(padding: EdgeInsets.all(4),
                      child: Image.asset("images/${categoriesList[index].image}", width: 50,),)
                ),
                SizedBox(height: 10,),
                CustomText(text: categoriesList[index].name, size: 16, color: black,),
              ],
            ),
          );
        },
      ),
    );
  }
}
