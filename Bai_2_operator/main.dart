void main() {
  int a = 5 + 3;
  int b = 10 - 4;
  int c = 3 * 4;
  double d = 10 / 2;
  int f = 7 % 3;

  print(d);

  // Phép chia lấy phần nguyên
  int x = 7 ~/ 2;
  print("Chia lấy phần nguyên: $x ");

  // Phép gán và tính toán kết hợp
  int z = 10;
  z += 5;
  z -= 2;
  
  // ~/ chia lấy phần nguyên
  z ~/= 3;

  print("Chia và gán: $z");

  print("==============================================");

  // toán tử tăng / giảm
  // tiền tố: tăng giá trị lên rồi mới thực thi
  // hậu tố: thực thi xong mới tăng giá trị lên
  int y = 5;
  print(y++); // in y = 5 , tăng y lên 1 => y = 6
  print(++y); // tăng y lên 1 y = 7 , in y = 7;
  print(y--); // in y = 7,  giảm y đi 1 y = 6;
  print(--y); // giảm y đi 1 y = 5, in y - 5;
  print(y); // in y = 5

  print("==================================================");
  // toán tử so sánh
  print(2 == 2);
  print(2 != 3);
  print(2 >= 3);

  print("==================================================");
  /*
     ép kiểu
     as: ép kiểu
     is: kiểm tra kiểu
     !is: kiểm tra không phải kiểu
  */
  Object object = 'Hello';

  // Kiểm tra object có phải là String không
  if (object is String) {
    print("Yes");
  }

  // Kiểm tra không phải kiểu int
  if (object is! int){
    print("Yes");
  }

  // ép kiểu
  String str = object as String;
  print(str.toUpperCase());


  // toán tử ??=
  // ??= sẽ gắn giá trị nếu biến đang bị null
  int? az;
  az ??= 5;
  print("az = $az");

  // không gắn giá trị = 10 vì ở trên az đã có giá trị rồi, cho nên sẽ không được thực thi
  az ??= 10;
  print("az = $az");

 int diemToan = 5;
 int diemVan = 5;
 int tongDiem = 0;

 tongDiem += diemToan;
 tongDiem += diemVan;

 print("Tổng điểm: $tongDiem");
}

