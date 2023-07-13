import 'package:flutter/material.dart';

import '../bottomnavbar.dart';
import '../enum.dart';

class UserProfile
    extends StatefulWidget {
  @override
  State<UserProfile> createState() =>
      _UserProfileState();
}

class _UserProfileState
    extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      bottomNavigationBar:
          const BottomNavBar(
              selectedMenu:
                  MenuState.user),
      body: Center(
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            crossAxisAlignment:
                CrossAxisAlignment
                    .center,
            children: const [
              CircleAvatar(
                radius: 80,
                backgroundColor:
                    Colors.white,
                backgroundImage: AssetImage(
                    '../../assets/images/l.jpg'),
              ),
              Text(
                "Ayesha Omar",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight:
                        FontWeight
                            .bold),
              )
            ]),
      ),
    );
  }
}
