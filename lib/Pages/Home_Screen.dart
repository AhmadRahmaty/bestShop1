import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
import 'constants.dart';
import 'enum.dart';
import 'home_body.dart';

class HomeScreen
    extends StatefulWidget {
  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(
          selectedMenu: MenuState.home),
    );
  }
}
