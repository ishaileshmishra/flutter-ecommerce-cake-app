class CartModel {
  // cart model
  int qty;
  String title;
  String icon;
  double price;

  CartModel({this.title, this.icon, this.qty, this.price});
}

// create demo model for cart

List<CartModel> getCartModel() {
  List<CartModel> modelCart = new List<CartModel>();
  modelCart.add(new CartModel(
      title: "HomEnrich 1292 Cooking Spoons | Baking Spoons | Lad",
      icon:
          "https://rukminim1.flixcart.com/image/832/832/k1pbpu80/kitchen-tool-set/m/d/f/1292-homenrich-original-imaf9b6ufgtsfnzx.jpeg",
      price: 330,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Pigeon Shears 6 piece Kitchen Tool Set Stainless Steel K",
      icon:
          "https://rukminim1.flixcart.com/image/832/832/ka5oia80/kitchen-tool-set/p/f/g/14185-pigeon-original-imafrsfzkqxz3hzz.jpeg",
      price: 210,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Milton Delight Pack of 3 Thermoware Casserole Set",
      icon:
          "https://rukminim1.flixcart.com/image/832/832/jms25jk0/casserole/x/6/p/delight-casserole-gift-set-yellow-milton-original-imaf9hy4awszahze.jpeg",
      price: 96,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Women A-line Multicolor Dress",
      icon:
          "https://rukminim1.flixcart.com/image/865/1038/k2tc1ow0pkrrdj/dress/2/6/d/s-dark-blue-pink-beige-multicolor-79tkj2253-siril-original-imafhnehpyryvxc4.jpeg",
      price: 780,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Butterfly Rapid 4 Jar 750 watts 750 W Juicer Mixer Grinder",
      icon:
          "https://rukminim1.flixcart.com/image/832/832/jmi22kw0/mixer-grinder-juicer/n/z/a/butterfly-rapid-4-jar-750-watts-original-imaf5dvgugcqyug3.jpeg",
      price: 560,
      qty: 1));

  return modelCart;
}
