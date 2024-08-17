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
    for (var i = 0; i < products.length; i++) {
      if (products[i].name == name && products[i].quantity >= quantity) {
        products[i].quantity -= quantity;
        if (products[i].quantity <= 0) {
          products.removeAt(i);
        }
      } else if (products[i].name == name && products[i].quantity < quantity) {
        print('The quantity of $name is less than $quantity');
        products.removeAt(i);
      }
    }
  }

  void displayCart() {
    for (var product in products) {
      print(product.printData());
    }
  }
}
