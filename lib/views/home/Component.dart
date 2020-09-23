import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/details/ProductDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

GridView buildGridView(Orientation orientation, List<Album> album) {
  return GridView.builder(
      itemCount: album.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      itemBuilder: (BuildContext context, int index) {
        return buildCakeGridItem(context, album[index]); //buildCakeCard();
      });
}

Widget buildPageActionbar(
    BuildContext context, String greeting, String stringTitle, String urlIcon) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$greeting,",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                stringTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.network(
              urlIcon,
              height: 60.0,
              width: 60.0,
            ),
          ),
        ],
      )
    ],
  );
}

void modalBottomSheetMenu(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return Container(
        height: double.infinity,
        child: ListView.builder(
          itemCount: CakeService().cakeCategories.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 2,
              child: new Container(
                padding: EdgeInsets.all(0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.shade200,
                    child: Icon(
                      Icons.cake,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(CakeService().cakeCategories[index]),
                  onTap: () => {
                    Navigator.pop(context),
                    print("Tapped: ${CakeService().cakeCategories[index]}")
                  },
                ),
              ),
            );
          },
        ),
      );
    },
  );
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

Widget buildCakeGridItem(BuildContext context, Album album) {
  return GestureDetector(
    onTap: () => {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetail(
                    album: album,
                  ))),
    },
    child: buildCardGrid(album),
  );
}

Card buildCardGrid(Album album) {
  return Card(
    elevation: 2,
    shape: Border.all(width: 1, color: Colors.white),
    color: Colors.white,
    child: new GridTile(
      footer: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            album.photographer,
            maxLines: 1,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Image.network(
          album.photos.small,
          fit: BoxFit.cover,
        ),
      ), //just for testing, will fill with image later
    ),
  );
}
