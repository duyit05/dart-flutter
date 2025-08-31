import 'dart:math';

void main() {
  /*
    Định nghĩa:
    - Runes là tập hợp các điểm mã unicode của một chuỗi
    - Dùng để xử lý các ký tự unicode đặc biệt như emoji, ký tự
    - Mỗi ký tự unicode được biểu diễn bằng 1 số nguyê
  */
  String str = 'Hello I love you hihi';
  Runes runes1 = str.runes;

  Runes renes2 = Runes('\u2665');
  Runes runes3 = Runes('\u{1F600}');

  // Các phương thức và thuộc tính
  // 1. Chuyển đổi từ Runes sang String
  String heartSymbol = String.fromCharCodes(renes2);
  print(heartSymbol);

  // 2. Từ mã unicode sang String
  String emoji = String.fromCharCode(0x1F600);
  print(emoji);
  String symbol = String.fromCharCode(0x2665);
  print(symbol);

  print("============================= XỬ LÝ =======================");
  print(runes1.length);
  print(runes1.first);
  print(runes1.last);

  print("============================= DUYỆT =======================");
  runes1.forEach((element) {
    print('Unicode: $element, ký tự: ${String.fromCharCode(element)}');
  });
  print("============================= KIỂM TRA =======================");
  print(runes1.isEmpty);
  print(runes1.isNotEmpty);
}
