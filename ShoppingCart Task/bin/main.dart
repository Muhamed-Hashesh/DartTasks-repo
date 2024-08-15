import 'package:shoppingcart/product.dart';

void main(List<String> arguments) {
  var cart = Cart();

  cart.addProduct(Product(name: 'Apple', price: 0.5, quantity: 3));
  cart.addProduct(Product(name: 'Banana', price: 0.3, quantity: 5));
  cart.addProduct(Product(name: 'Orange', price: 0.6, quantity: 2));

  cart.displayCart();

  print('=================================');

  cart.addProduct(Product(name: 'Watermellon', price: 0.8, quantity: 2));

  cart.displayCart();

  print('=================================');

  cart.removeProduct(name: 'Apple', quantity: 2);
  cart.displayCart();

  print('=================================');

  cart.removeProduct(name: 'Orange', quantity: 1);
  cart.displayCart();
}
