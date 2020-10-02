import 'package:cake_corner/models/cakes.dart';
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
}

showSnackBar(BuildContext context, stringToPrint) {
  return Scaffold.of(context)
      .showSnackBar(SnackBar(content: Text(stringToPrint)));
}
