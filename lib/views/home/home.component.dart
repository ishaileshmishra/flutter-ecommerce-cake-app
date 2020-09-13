import 'package:cake_corner/models/cakes.dart';
import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/details/ProductDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

GridView buildGridView(Orientation orientation, List<Cakes> availCakes) {
  return GridView.builder(
      itemCount: availCakes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      itemBuilder: (BuildContext context, int index) {
        return buildCakeGridItem(context, availCakes[index]); //buildCakeCard();
      });
}

Row buildPageActionbar(BuildContext context, String stringTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        stringTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        radius: 25,
        child: GestureDetector(
          onTap: () {
            _modalBottomSheetMenu(context);
          },
          child: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.red.shade400,
          ),
        ),
      )
    ],
  );
}

void _modalBottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return new Container(
          height: 350.0,
          color: Colors.transparent, //could change this to Color(0xFF737373),
          //so you don't have to change MaterialApp canvasColor
          child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: Expanded(
                child: Container(
                  height: 40,
                  child: new ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: CakeService().cakeCategories.length,
                    itemBuilder: (context, index) {
                      return buildCakeCategory(index);
                    },
                  ),
                ),
              )),
        );
      });
}

Container buildCakeCategory(int index) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    width: 150.0,
    height: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.red.shade400,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    //color: Colors.red,
    child: Center(
      child: Text(
        CakeService().cakeCategories[index],
        maxLines: 1,
        style: TextStyle(color: Colors.red.shade600, fontSize: 16),
      ),
    ),
  );
}

Card buildCakeCard() {
  return Card(
    margin: EdgeInsets.all(8),
    elevation: 8,
    shadowColor: Colors.red.shade100,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Plain vanila cake",
            softWrap: true,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        Image.network(
          "https://png.pngtree.com/element_our/20190524/ourlarge/pngtree-cartoon-birthday-cake-free-element-image_1105574.jpg",
          fit: BoxFit.cover,
          alignment: Alignment.center,
          width: 100,
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.all(10), child: Text("data")),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () => print("Tapped"),
                child: Text(
                  "Add To Cart",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget buildCakeGridItem(BuildContext context, Cakes cake) {
  return GestureDetector(
    onTap: () => {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetail(
                    cake: cake,
                  ))),
    },
    child: Card(
      elevation: 5,
      color: Colors.white,
      child: new GridTile(
        footer: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              cake.title,
              maxLines: 1,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Image.network(
            cake.url,
            fit: BoxFit.cover,
          ),
        ), //just for testing, will fill with image later
      ),
    ),
  );
}
