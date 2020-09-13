import 'package:cake_corner/models/cakes.dart';
import 'package:cake_corner/views/details/detail.component.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.cake}) : super(key: key);

  final Cakes cake;

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
              Container(child: Image.network(cake.url)),
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
          itemCount: cake.weights.length,
          itemBuilder: (context, index) {
            return weightText(cake.weights[index].toString());
          }),
    );
  }

  Text _buildDescriptionText() {
    return Text(
      cake.description,
      style: TextStyle(fontSize: 15),
      maxLines: 4,
    );
  }

  Text _buildTitleText() {
    return Text(
      cake.title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
