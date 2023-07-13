import 'package:flutter/material.dart';




class CartCounter
    extends StatefulWidget {
  const CartCounter({Key? key})
      : super(key: key);

  @override
  State<CartCounter> createState() =>
      _CartCounterState();
}

class _CartCounterState
    extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildSizedBox(
            icon: Icons.remove,
            press: () {
              if(numOfItem > 1){
                setState(() {
                  numOfItem--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets
              .symmetric(horizontal: 5),
          child: Text(
            numOfItem
                .toString()
                .padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headline6,
          ),
        ),
        buildSizedBox(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
              });
            }),
      ],
    );
  }

  SizedBox buildSizedBox(
      {required IconData icon,
        required Function() press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
