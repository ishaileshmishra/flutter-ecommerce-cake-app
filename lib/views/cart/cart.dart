import 'package:cake_corner/views/home/home.component.dart';
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
        floatingActionButton: FloatingActionButton.extended(
          label: Text("PAY INR 315.00"),
          icon: Icon(CupertinoIcons.shopping_cart),
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.white,
          tooltip: 'Checkout',
          onPressed: () => {},
        ),
        backgroundColor: Colors.grey.shade200,
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              buildPageActionbar(context, "Your cart has 2 Items", "MY BAG",
                  "https://i.dlpng.com/static/png/7280052_preview.png"),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: double.infinity,
                        // This is the demo design
                        child: _buildCard(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Card _buildCard() {
    return Card(
      child: ListTile(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sample Chocolate Cake",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "INR 23.90",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                "Quantity: 2",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "Color: red",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () => print("object"),
                    child: Text("EDIT"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () => print("object"),
                    child: Text("REMOVE"),
                  )
                ],
              )
            ],
          ),
        ),
        leading: Image.network(
          "https://i.dlpng.com/static/png/7280052_preview.png",
          color: Colors.red.shade200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
