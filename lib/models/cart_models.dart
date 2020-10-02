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
          "https://images.pexels.com/photos/1721934/pexels-photo-1721934.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      price: 330,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Pigeon Shears 6 piece Kitchen Tool Set Stainless Steel K",
      icon:
          "https://images.pexels.com/photos/19640/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      price: 210,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Milton Delight Pack of 3 Thermoware Casserole Set",
      icon:
          "https://images.pexels.com/photos/913135/pexels-photo-913135.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      price: 96,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Women A-line Multicolor Dress",
      icon:
          "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      price: 780,
      qty: 1));
  modelCart.add(new CartModel(
      title: "Butterfly Rapid 4 Jar 750 watts 750 W Juicer Mixer Grinder",
      icon:
          "https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      price: 560,
      qty: 1));

  return modelCart;
}
