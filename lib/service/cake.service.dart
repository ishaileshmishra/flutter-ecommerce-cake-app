import 'package:cake_corner/models/cakes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CakeService {
  List<Cakes> cakeList = new List<Cakes>();
  String description =
      "Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. ... The most commonly used cake ingredients include flour, sugar, eggs, butter or oil or margarine, a liquid, and leavening agents, such as baking soda or baking powder";

  List<String> get cakeCategories => [
        "Butter Cake",
        "Pound Cake",
        "Sponge Cake",
        "Genoise Cake",
        "Biscuit Cake",
        "Angel Food Cake",
        "Chiffon Cake",
        "Baked Flourless Cake",
        "Unbaked Flourless Cake",
        "Carrot Cake",
        "Red Velvet Cake"
      ];

  List<Cakes> getAvailCakes() {
    cakeList.add(new Cakes(
        "Angel Food Cake",
        "Angel food cakes are made with egg whites alone and no yolks. The whites are whipped with sugar until very firm before the flour is gently folded in, resulting in a snowy-white, airy, and delicate cake that marries beautifully with fruit",
        "https://assets.epicurious.com/photos/5978a769ec2bc9393c374571/6:4/w_1600%2Cc_limit/How-To-Make-Angel-Food-Cake-071220171869.jpg",
        "500",
        [0.5, 1.0, 1.5, 2.0]));
    cakeList.add(new Cakes(
        "Plain vanilla cake",
        description,
        "https://assets.epicurious.com/photos/575991f3973781fc02c2a827/6:4/w_1600%2Cc_limit/EP_06062016_Vanilla-Buttermilk-Wedding-Cake-with-Raspberries-and-Orange-Cream-Cheese-Frosting.jpg",
        "200",
        [0.5, 1.0, 1.5, 2.0]));
    //cakeList.add(new Cakes("Delightful Black Forest Cake", description, "https://i.ytimg.com/vi/vsSz7t5lqzw/maxresdefault.jpg", "price", [0.5, 1.0, 1.5, 2.0]));
    cakeList.add(new Cakes(
        "Sponge Cake",
        "Any recipe that contains no baking soda or baking powder but lots of whipped eggs or egg whites? That's a sponge cake and there are several different types of sponge cake. which will be called different things wherever you are.",
        "https://assets.epicurious.com/photos/56f301595380ea2215f3b49c/6:4/w_1600%2Cc_limit/1015-FS-CAKE01.jpg",
        "900",
        [0.5, 1.0, 1.5, 2.0]));
    cakeList.add(new Cakes(
        "Genoise Cake",
        "Genoise lacks much assertive flavor of its own, but it is often used to construct layered or rolled cakes when a lighter texture than a butter cake is desired. To add flavor and moisture, genoise cake layers are always moistened with a flavored syrup, ",
        "https://assets.epicurious.com/photos/5af339265e455d485852fba6/6:4/w_1600%2Cc_limit/EP_06012016_strawberry_shortcake_hero-slices.jpg",
        "390",
        [0.5, 1.0, 1.5, 2.0]));
    cakeList.add(new Cakes(
        "Biscuit Cake",
        "Biscuit (always pronounced the French way as bees-kwee) cakes are another type of sponge cake containing both egg whites and yolks, but, unlike genoise, the whites and yolks are whipped separately and then folded back together. This creates a light batter that's drier than a genoise but holds its shape better after mixing. For this reason, it's often used for piped shapes such as ladyfingers",
        "https://assets.epicurious.com/photos/5af31a94fddd026b70f8c8e7/6:4/w_1600%2Cc_limit/french-biscuit-cake-050918.jpg",
        "950",
        [0.5, 1.0, 1.5, 2.0]));
    return cakeList;
  }

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
