class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  String printData() => ' $quantity $name - \$$price ';
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct({required String name, int quantity = 1}) {
    if (quantity > 0) {
      products.removeWhere(
        (product) => product.name == name && product.quantity >= quantity,
      );
    }
  }

  void displayCart() {
    for (var product in products) {
      print(product.printData());
    }
  }
}
