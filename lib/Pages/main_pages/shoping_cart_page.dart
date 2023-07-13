import 'package:flutter/material.dart';

import '../bottomnavbar.dart';
import '../enum.dart';



class ShoppingCartScreen extends StatefulWidget {
  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
            "Shopping cart Screen"),
      ),
      bottomNavigationBar: const BottomNavBar(
          selectedMenu:
          MenuState.shoppingcart),
        body: Center(child: Text("Your Shopping cart here"),)
    );
  }
}
