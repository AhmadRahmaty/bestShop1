import 'package:flutter/material.dart';
import 'Products/recent_products.dart';
// import 'constants.dart';
import 'custom_searchbar.dart';
import 'customappbar.dart';
import 'category/category.dart';

class HomeBody extends StatefulWidget {
   const HomeBody({Key? key})
      : super(key: key);
  @override
  State<HomeBody> createState() =>
      _HomeBodyState();
}
class _HomeBodyState
    extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.all(8.0),
          child: Column(
            children:  [
              const custom_appbar(),
              const SizedBox(
                height: 10,
              ),
              const custom_searchbar(),

              const Category(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(height: 330,child: RecentProducts()),
            ],
          ),
        ),
      ),
      // drawer: Drawer(),
    );
  }
}
