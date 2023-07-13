import 'package:flutter/material.dart';


class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text("product.description",style: TextStyle(height: 1.5),),
    );
  }
}