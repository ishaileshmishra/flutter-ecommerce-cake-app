import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

buildActionbar(
    BuildContext context, String stringTitle, String stringSubTitle) {
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
                    text: stringTitle,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),
                TextSpan(
                    text: '\n$stringSubTitle',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ],
            )),
          ),
          Icon(
            Icons.assistant_photo_sharp,
            size: 40,
            color: Colors.red.shade700,
          )
        ],
      ));
}
