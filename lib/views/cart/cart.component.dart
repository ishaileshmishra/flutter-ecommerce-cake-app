import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCartActionbar(
    BuildContext context, String greeting, String stringTitle, String urlIcon) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // GestureDetector(
          //   onTap: () => Navigator.pop(context),
          //   child: Icon(
          //     CupertinoIcons.clear_circled,
          //     size: 35,
          //   ),
          // ),
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
            child: CircleAvatar(
              minRadius: 25,
              backgroundColor: Colors.grey.shade400,
              child: Icon(
                CupertinoIcons.shopping_cart,
                size: 30,
              ),
            ),
          ),
        ],
      )
    ],
  );
}
