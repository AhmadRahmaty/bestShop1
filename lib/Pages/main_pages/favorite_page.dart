import 'package:flutter/material.dart';

import '../bottomnavbar.dart';
import '../enum.dart';

class FavrtScreen
    extends StatefulWidget {
  @override
  State<FavrtScreen> createState() =>
      _FavrtScreenState();
}

class _FavrtScreenState
    extends State<FavrtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Favourite Screen"),
      ),
      bottomNavigationBar: const BottomNavBar(
          selectedMenu:
              MenuState.favourite),
        body: const Center(child: Text("Your favorite pages here"),),
    );
  }
}
