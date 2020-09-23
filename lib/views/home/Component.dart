import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/home/StandardStaggeredGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

void modalBottomSheetMenu(List<Album> listOfAlbums, BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(15),
        child: Expanded(
          child: PinterestGrid(
            albums: listOfAlbums,
          ),
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
