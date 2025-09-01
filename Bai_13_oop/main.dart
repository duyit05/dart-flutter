import 'dart:math';

class Point {
  double x, y;

  Point(this.x, this.y);

  double distantTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }
}

class Point2 {
  double? x; // thuộc tính instance, ban đầu mặc định là null
  double z = 0; // thuộc tính instance z, ban đầu có giá trị bằng 0
}

// biến thoàn cục
double X_ = 1.5;

class Point3 {
  double? x = X_; // có thể truy cập khai báo không phụ thuộc this
  double? y;
  late double? z = this.x;
  Point3(this.x, this.y, this.z);
}

class Rectangle {
  double left, top, width, height;
  late double _z; // dấu _ ở trước là biến private

  Rectangle(this.left, this.top, this.width, this.height);

  double get getZ => _z;
  void set setZ(double value) => _z = value;

  @override
  String toString() {
    return "left: ${left} - top: ${top} - width: ${width} - heigh: ${height}";
  }

  @override
  bool operator ==(Object object) {
    if (identical(this, object)) return true;
    if (object is! Rectangle) return false;

    return 
        this.left == object.left &&
        this.top == object.top &&
        this.width == object.width &&
        this.height == object.height;
  }
}

// thuộc tính và phương thức static
class MyMath {
  static const PI = 3.14;
  static double sqrt(double x) {
    return x * x;
  }
}



void main() {
  Point point1 = new Point(0, 0);
  Point point2 = new Point(3, 3);
  var d = point1.distantTo(point2);
  print(d.toStringAsFixed(2));

  Point2 point2_1 = new Point2();
  print(point2_1.x);
  print(point2_1.z);

  print("====================== STATIC ===================");
  print(MyMath.PI);
  print(MyMath.sqrt(5));

  print("====================== RECTANGLE ===================");
  Rectangle r1 = new Rectangle(0, 0, 15, 10);
  Rectangle r2 = new Rectangle(1, 0, 15, 10);
  print(r1 == r2);
  print(r1.toString());
  r1.setZ = 100;
  print(r1.getZ);

}
