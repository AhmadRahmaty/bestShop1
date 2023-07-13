import 'package:flutter/material.dart';
import 'Home_Screen.dart';
import 'constants.dart';
import 'enum.dart';
import 'main_pages/favorite_page.dart';
import 'main_pages/shoping_cart_page.dart';
import 'main_pages/user.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key, required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = Colors.grey;
    return Container(
      padding:
      const EdgeInsets.symmetric(
          vertical: 0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.only(
            topLeft:
            Radius.circular(
                40),
            topRight:
            Radius.circular(
                30)),
        boxShadow: [
          BoxShadow(
              color: Color(0x0ffadada),
              offset: Offset(0, -15),
              blurRadius: 20),
        ],
      ),
      child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: MenuState.home == selectedMenu ?KPrimaryColor:inactiveColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeScreen()),
                  );
                },
                icon: const Icon(Icons
                    .home),
              ),

              IconButton(
                color: MenuState.favourite == selectedMenu ?KPrimaryColor:inactiveColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FavrtScreen()),
                  );
                },
                icon: const Icon(Icons
                    .favorite_border),
              ),
              IconButton(
                color: MenuState.shoppingcart == selectedMenu ?KPrimaryColor:inactiveColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ShoppingCartScreen()),
                  );
                },
                icon: const Icon(Icons
                    .shopping_cart),
              ),
              IconButton(
                color: MenuState.profile == selectedMenu ?KPrimaryColor:inactiveColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UserProfile()),
                  );
                },
                icon: const Icon(Icons
                    .account_circle_outlined),
              ),
            ],
          )),
    );
  }
}