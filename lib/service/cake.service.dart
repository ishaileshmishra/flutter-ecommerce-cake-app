import 'package:cake_corner/models/cakes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CakeService {
  List<Cakes> cakeList = new List<Cakes>();
  String description =
      "Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. ... The most commonly used cake ingredients include flour, sugar, eggs, butter or oil or margarine, a liquid, and leavening agents, such as baking soda or baking powder";

  List<String> get cakeCategories => [
        'Classic Vanila',
        'Irish Coffee',
        'Coffee Mocha',
        'Genoise Cake',
        'Litchee',
        'Choco Express',
        'Choco Walnut',
        'Choco Cream',
        'Rocky Almond',
        'Red Cherry',
        'Fruit Of Forest',
        'Cosmo Mango',
        'Red Velvet'
      ];

  List<UserProfile> getUserOptions() {
    List<UserProfile> optionList = new List<UserProfile>();
    optionList.add(new UserProfile(
        "Settings",
        Icon(
          CupertinoIcons.settings_solid,
          size: 35,
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
}

class UserProfile {
  String title;
  Icon icon;

  UserProfile(this.title, this.icon);
}
