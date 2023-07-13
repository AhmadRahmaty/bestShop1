import 'package:flutter/material.dart';
import '../constants.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(press:(){}, text: 'Women'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Mens'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Kids'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Shoes'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Watches'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Ring'),
          const SizedBox(width:20 ),
          CategoryProducts(press:(){}, text: 'Bag'),
        ]

  ,
      ),
    );}
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key, required this.text, required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Container(child: Chip(
          backgroundColor: KPrimaryColor,
          label: Row(children: [
          Text(text),
        ],),),),
      ),
    );
  }
}
