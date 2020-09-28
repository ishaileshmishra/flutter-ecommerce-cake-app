import 'package:cake_corner/views/cart/cart.dart';
import 'package:cake_corner/views/home/Home.dart';
import 'package:cake_corner/views/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigator extends StatefulWidget {
  @override
  _PageNavigatorState createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(title: "Cakes"),
      CartPage(title: "Cart"),
      ProfilePage(title: "Profile"),
    ];

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: _currentIndex,
        onTap: (value) {
          // Respond to item press.
          print("Which index is tapped: $value");
          setState(() => _currentIndex = value);
        },
        // new // this will be set when a new tab is tapped
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(
              CupertinoIcons.home,
              size: 30,
            ),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              CupertinoIcons.shopping_cart,
              size: 30,
            ),
            title: new Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              size: 30,
            ),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}
