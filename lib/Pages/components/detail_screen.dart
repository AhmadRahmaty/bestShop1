import 'package:flutter/material.dart';
import '../constants.dart';
import 'detail_body.dart';

class DetailScreen
    extends StatelessWidget {
  const DetailScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        appBar: buildAppBar(context),
        body: DetailBody(product:"product"),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor:
            Colors.deepOrangeAccent,
        leading: IconButton(
            icon: Icon(Icons
                .keyboard_backspace),
            onPressed: ()=> Navigator.pop(context),color: Colors.white),
      actions: [
        IconButton(icon: Icon(Icons.search),onPressed: (){}),
        IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){}),
      ],
      );
  }
}
