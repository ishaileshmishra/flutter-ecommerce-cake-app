import 'package:cake_corner/views/home/home.component.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 40),
              buildPageActionbar(context, widget.title),
              SizedBox(height: 20),
              Text("No Cart Item Available")
            ],
          ),
        ),
      ),
    );
  }
}
