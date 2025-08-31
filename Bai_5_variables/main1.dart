import 'dart:math';
import 'dart:io';

void main() {
  double a = 0, b = 0, c = 0;
  do {
    stdout.write("Nhập vào số a (a != 0): ");
    String? inputA = stdin.readLineSync();
    if (inputA != null) {
      a = double.tryParse(inputA) ?? 0;
    }
  } while (a == 0);

  stdout.write("Nhập vào số b: ");
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    b = double.tryParse(inputB) ?? 0;
  }

  stdout.write("Nhập vào số c: ");
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }

  // tính delta
  double delta = pow(b,2) - 4 * a * c;

  // hiển thị phương trình
  print("Phương trình: ${a}x^2 + ${b}x + $c = 0");

  // Giải phương trình
  if (delta < 0) {
    print("Phương trình vô nghiệm!");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép x1 = x2 = ${x.toStringAsFixed(2)}");
  } else {
    double sqrtDelta = sqrt(delta);
    double x1 = (-b - sqrt(sqrtDelta)) / (2 * a);
    double x2 = (-b + sqrt(sqrtDelta)) / (2 * a);
    print("Phương trình có 2 nghiệm phân biệt: x1 = ${x1.toStringAsFixed(2)} và x2 = ${x2.toStringAsFixed(2)}");

  } 
}
