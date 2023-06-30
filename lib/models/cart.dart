import 'package:food_delivery_app/models/product.dart';

class Cart {
  static List cartItems = [];

  static void addToCart(Product product) {
    cartItems.add(product);
  }

  static void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  static int getTotalPrice() {
    int totalPrice = 0;

    for (Product product in cartItems) {
      totalPrice += product.getPrice;
    }

    return totalPrice;
  }
}
