import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/home/StandardStaggeredGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

SizedBox applySpacer() {
  return SizedBox(
    height: 20,
  );
}

buildHomeActionbar(BuildContext context, String s, String t) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: RichText(
                text: TextSpan(
              //text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: s,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),
                TextSpan(
                    text: '\n$t',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ],
            )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              //backgroundColor: Colors.grey.shade500,
              child: Icon(
                CupertinoIcons.shopping_cart,
                size: 25,
              ),
            ),
          )
        ],
      ));
}

FloatingActionButton buildHomeFloatingBtn(
    List<Album> listOfAlbums, BuildContext context) {
  return FloatingActionButton.extended(
    label: Text("Filter"),
    icon: Icon(Icons.filter_list),
    backgroundColor: Colors.red.shade400,
    foregroundColor: Colors.white,
    tooltip: 'Filter',
    onPressed: () => modalBottomSheetMenu(listOfAlbums, context),
  );
}

void modalBottomSheetMenu(List<Album> listOfAlbums, BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
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
