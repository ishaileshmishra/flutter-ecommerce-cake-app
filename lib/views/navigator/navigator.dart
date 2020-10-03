import 'package:cake_corner/views/cart/Cart.dart';
import 'package:cake_corner/views/home/Home.dart';
import 'package:cake_corner/views/profile/UserProfile.dart';
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
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (value) {
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

            // ignore: deprecated_member_use
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              CupertinoIcons.shopping_cart,
              size: 30,
            ),
            // ignore: deprecated_member_use
            title: new Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              size: 30,
            ),
            // ignore: deprecated_member_use
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}
