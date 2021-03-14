import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quick/screens/home.dart';
import 'package:quick/screens/cart.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _children = [HomeScreen(), CartScreen()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        index: _currentIndex,
        onTap: navigateHandler,
        items: [
          Icon(Icons.home),
          Icon(Icons.shopping_cart),
        ],
      ),
    );
  }

  void navigateHandler(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
