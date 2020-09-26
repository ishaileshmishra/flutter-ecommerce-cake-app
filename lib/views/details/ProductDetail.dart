import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/views/details/NumberInputWithIncrementDecrement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double roundImage = 50;

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        body: ListView(
      children: <Widget>[
        _buildImageContainer(height, roundImage),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextTitle(),
              SizedBox(height: 12),
              _buildRowPriceRating(),
              SizedBox(height: 12),
              _buildRowProductCounter(),
              SizedBox(height: 12),
              NumberInputWithIncrementDecrement()
            ],
          ),
        ),
      ],
    ));
  }

  Row _buildRowProductCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          onPressed: () => {},
          child: Icon(CupertinoIcons.plus_circled),
        ),
        SizedBox(width: 12),
        Text(
          "4.8",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 12),
        RaisedButton(
          onPressed: () => {},
          child: Icon(CupertinoIcons.minus_circled),
        )
      ],
    );
  }

  Row _buildRowPriceRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Price INR: ${((album.photoId) / 1000).toString().split('.')[0]}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 12),
        SmoothStarRating(
            allowHalfRating: false,
            onRated: (v) {},
            starCount: 5,
            rating: 5,
            size: 20.0,
            isReadOnly: true,
            color: Colors.red.shade200,
            borderColor: Colors.green,
            spacing: 0.0),
        Text(
          "Rating: 4.8",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Text _buildTextTitle() {
    return Text(
      'Staberry Frosted Sprinkles',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Container _buildImageContainer(double height, double roundImage) {
    return Container(
      color: Colors.grey.shade200,
      height: 2 * (height / 3),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(roundImage),
            bottomRight: Radius.circular(roundImage)),
        child: Image.network(
          album.photos.medium,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Straberry Frosted Sprinkles",
        style: TextStyle(
            fontSize: 20, color: Colors.blueGrey, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          CupertinoIcons.clear_thick,
          color: Colors.red.shade300,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () => {print('Added to favorite')},
            child: Icon(
              CupertinoIcons.heart,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
