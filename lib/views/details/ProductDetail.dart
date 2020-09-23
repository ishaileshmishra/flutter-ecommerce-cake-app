import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/views/details/detail.component.dart';
import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: ListView(
            children: [
              buildActionbarCakeDetails(context),
              vPutMargin(),
              Container(
                child: ProgressiveImage(
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/icons/placeholder.png'),
                  // size: 1.87KB
                  thumbnail: NetworkImage(
                      'https://www.slingshotvoip.com/wp-content/uploads/2019/12/placeholder.png'),
                  // size: 1.29MB
                  image: NetworkImage(album.photos.landscape),
                  height: 250,
                  width: double.infinity,
                ),
              ),
              vPutMargin(),
              _buildTitleText(),
              vPutMargin(),
              _buildDescriptionText(),
              vPutMargin(),
              Text(
                "Select weight:",
                style: mediumHeading(),
              ),
              vPutMargin(),
              _buildWeightContainer(),
              vPutMargin(),
              Text(
                "Eggless:",
                style: mediumHeading(),
              ),
              vPutMargin(),
              _buildEggChoiceRow(),
              vPutMargin(),
              Text(
                "Message on cake:",
                style: mediumHeading(),
              ),
              vPutMargin(),
              textField(),
              vPutMargin(),
              Text(
                "Address:",
                style: mediumHeading(),
              ),
              vPutMargin(),
              textField(),
              vPutMargin(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  weightText("Add To Cart"),
                  selectedWeightText("Buy Now"),
                ],
              ),
              vPutMargin(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildEggChoiceRow() {
    return Row(
      children: [
        selectedWeightText("Yes"),
        SizedBox(width: 10),
        weightText("No"),
      ],
    );
  }

  Container _buildWeightContainer() {
    return Container(
      width: double.infinity,
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return weightText('1.5');
          }),
    );
  }

  Text _buildDescriptionText() {
    return Text(
      album.photographer,
      style: TextStyle(fontSize: 15),
      maxLines: 4,
    );
  }

  Text _buildTitleText() {
    return Text(
      album.photographer,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
