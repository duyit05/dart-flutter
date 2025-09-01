import 'dart:async';

// hàm trả về future
Future<String> taiDuLieu() {
  return Future.delayed(Duration(seconds: 2), () => "Dữ liệu đã tải xong");
}

// gọi hàm cách 1

void hamChinh1() {
  print("Bắt đầu tải");
  Future<String> f = taiDuLieu();
  f.then((ketQua) => print("Kết quả: $ketQua"));
  print("Tiếp tục công việc khác");
}

// gọi hàm cách 2
void hamChinh2 () async {
  print("Bắt đầu tải");
  String ketQua = await taiDuLieu();
  print("Kết quả: $ketQua");
  print("Tiếp tục công việc khác");
}

void main () {
  hamChinh2();
}
