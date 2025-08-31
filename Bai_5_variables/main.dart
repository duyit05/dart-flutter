import 'dart:math';
import 'dart:io';

void main() {
  // số nguyên
  int x = 10;
  // số thực
  double z = 100.12;

  // kiểu dữ liệu num chứa cả số nguyên và số thực
  num c = 100;
  num y = 100.2;

  // chuyển chuỗi sang số nguyên
  var one = int.parse("1");
  print(one == 1 ? "YES" : "NO");

  // chuyển chuỗi sang số thực
  var onePointone = double.parse("1.1");
  print(onePointone == 1.1 ? "YES" : "NO");

  // chuyển số nguyên => chuỗi
  String oneAsString = 1.toString();
  print(oneAsString);

  // chuyển số thực => chuỗi
  // toStringAsFixed(2) lấy 2 số sau dấu .
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString);

  print("============================================================");
  /*
    Chuỗi là một tập hợp ký tự UTF-16;
  */

  var s1 = 'Lê Nhật Tùng';
  var s2 = 'TITV.vn';

  // chèn giá trị của 1 biểu thức, biến vào trong chuỗi: ${......}
  double diemToan = 9.5;
  double diemVan = 8.5;

  var s3 = 'Xin chào $s1, bạn đã được tổng điểm là: ${diemToan + diemVan}';
  print(s3);

  // Tạo ra chuỗi nằm ở nhiều dòng
  var s4 = '''
          Dòng 1
          Dòng 2
          Dòng 3
          ''';

  var s5 = """
          Dòng 1
          Dòng 2
          Dòng 3
          """;

  var s6 = 'Đây là một đoạn \n văn bản';
  print(s6);

  // r là raw -> không chứa kí tự đặc biệt in ra ra tất cả nội dung của chuỗi
  var s7 = r'Đây là một đoạn \n văn bản';
  print(s7);

  var s8 = "Chuỗi 1" + "Chuỗi 2";
  print(s8);

}
