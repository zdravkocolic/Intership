import 'Product.dart';

class Food implements Product {
  Food(String name, String brand, double price, DateTime exp_date,
      double quantity) {
    this.name = name;
    this.brand = brand;
    this.price = price;
    this.exp_date = exp_date;
    this.quantity = quantity;
    this.subtotal = 0;
    this.total = 0;
  }
  
  @override
  String? brand;

  @override
  String? name;

  @override
  double? price = 0.0;

  DateTime exp_date = DateTime.now();

  @override
  double? quantity;

  @override
  double? subtotal;

  @override
  double? total;

  @override
  void calculateDiscount() {
    final date2 = DateTime.now();
    final difference = date2.difference(this.exp_date).inDays.abs();
    
    if (difference <= 5) {
      if (difference < 1) {
        print("#discount 50% -\$" +
            ((this.price! - this.price! * 0.5) * this.quantity!).toStringAsFixed(2)+ "\n");
        this.price = this.price! * 0.5;
        return;
      }
      print("#discount 10% -\$" +
          ((this.price! - this.price! * 0.9) * this.quantity!).toStringAsFixed(2)+ "\n");
      this.price = this.price! * 0.9;
    }
  }


   @override
  void printProductInfo() {
    print(name.toString() + " - " + brand.toString());
    print(quantity.toString() +
        " x \$" +
        price.toString() +
        " = \$" +
        (quantity! * price!).toStringAsFixed(2));
    subtotal = subtotal! + price! * quantity!;
    calculateDiscount();
    total = total! + price! * quantity!;
    
  }

}
