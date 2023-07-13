import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8.0),
          height: 32,
          width: 32,
          decoration:
          const BoxDecoration(
            color: Color(
                0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.favorite_border),
        )
      ],
    );
  }
}