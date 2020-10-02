import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

List<UserProfile> getUserOptions() {
  List<UserProfile> optionList = new List<UserProfile>();
  optionList.add(new UserProfile(
      "Settings",
      Icon(
        CupertinoIcons.settings_solid,
        size: 30,
      )));
  optionList.add(new UserProfile(
      "Payment",
      Icon(
        Icons.payment,
        size: 35,
      )));
  optionList.add(new UserProfile(
      "Notifications",
      Icon(
        CupertinoIcons.bell,
        size: 35,
      )));
  optionList.add(new UserProfile(
      "Support",
      Icon(
        CupertinoIcons.info,
        size: 35,
      )));
  optionList.add(new UserProfile(
      "Sign out",
      Icon(
        CupertinoIcons.circle_filled,
        size: 35,
        color: Colors.red,
      )));
  return optionList;
}

class UserProfile {
  String title;
  Icon icon;

  UserProfile(this.title, this.icon);
}
