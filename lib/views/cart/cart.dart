import 'package:cake_corner/views/cart/cart.component.dart';
import 'package:flutter/cupertino.dart';
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
        floatingActionButton: _buildFloatingActionButton(),
        backgroundColor: Colors.grey.shade200,
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              buildCartActionbar(context, "Your cart has 2 Items", "MY BAG",
                  "https://i.dlpng.com/static/png/7280052_preview.png"),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: _buildCartCard(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton.extended(
      label: Text("PAY INR 315.00"),
      icon: Icon(CupertinoIcons.shopping_cart),
      backgroundColor: Colors.red.shade400,
      foregroundColor: Colors.white,
      tooltip: 'Checkout',
      onPressed: () => {},
    );
  }

  Card _buildCartCard() {
    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  "https://i.dlpng.com/static/png/7280052_preview.png",
                  color: Colors.red.shade200,
                  fit: BoxFit.cover,
                  height: 100,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sample Chocolate Cake",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Quantity: 2",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "INR: 140",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          RaisedButton(
                            onPressed: () => {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                            color: Colors.red.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide()),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            onPressed: () => {},
                            child: Text(
                              'Remove',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                            color: Colors.red.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide()),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
