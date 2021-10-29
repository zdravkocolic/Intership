import 'Food.dart';


class Beverages extends Food {
  Beverages(String name, String brand, double price, DateTime exp_date,
      double quantity)
      : super('', '', 0.0, DateTime.now(), 0.0) {
    this.name = name;
    this.brand = brand;
    this.price = price;
    this.exp_date = exp_date;
    this.quantity = quantity;
    this.subtotal = 0;
    this.total = 0;
  }
}
