class Car {
  String brand;
  String model;
  int year;

  Car({required this.brand, required this.model, required this.year});

  String getDescription() {
    return 'car brand is $brand, $model model .. made in ($year)';
  }
}
