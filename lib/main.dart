import 'package:flutter/material.dart';
import './Pages/Home_Screen.dart';
import 'Pages/constants.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Best Shop",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: KPrimaryColor),
          primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
