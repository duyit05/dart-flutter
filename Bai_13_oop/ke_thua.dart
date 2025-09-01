
class Product {
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal() {
    print("Total price: ${quantity * price}");
  }
}

class Table extends Product {
  double width = 0;
  double heigh = 0;

  Table(this.width, this.heigh, double price, int quantity, String name)
      : super(price, quantity, name);

  @override
  void showTotal() {
    print("name of table: ${name}");
    super.showTotal();
  }
}

void main() {
  print("========================== KẾ THỪA =======================");
  Product p1 = new Product(10000, 2, 'Table');
  Product p2 = new Table(7, 6, 500000, 6, 'Ipad Pro');
  p1.showTotal();
  print("===============");
  p2.showTotal();
}
