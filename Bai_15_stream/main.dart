import 'dart:async';

void viDuStreamDemSo() {
  print("Ví dụ 1: Stream trò chơi năm mười ================");

  // tạo ra stream đếm số (phát ra con số 0...5...10), mỗi giây đếm 1 số
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (x) => x + 1).take(20);

  // lắng nghe
  stream.listen((x) => print("Nghe được số ${x * 5} - đang chạy trốn"),
      onDone: () => print("Người bị: bắt đầu đi tìm"),
      onError: (error) => print("Có vấn đề! ngưng cuộc chơi ${error}"));
}

// ví dụ 2: tạo và điều khiển stream với StreamController
// void viDuGuiTinNhan() {
  
//   print("Ví dụ 2: Stream controller");

//   // Tạo bộ điều khiển stream
//   StreamController<String> controller = StreamController<String>();

//   // Lắng nghe stream
//   controller.stream.listen(
//     (tinNhan) => print("Tin nhắn mới: ${tinNhan}"),
//     onDone: () => print("Không còn tin nhắn nữa")
//   );

//   print("Đang gửi tin nhắn đầu tiên......");
//   // Gửi tin nhắn vào stream, đây chỉ là hằng đợi (chưa thực thi callback)
//   controller.add("Xin chào!");

  
//   // Gửi thêm tin nhắn sau 2 giây
//   Future.delayed(Duration(seconds: 2), () {
//     print("Đang gửi tin nhắn thứ 2 .....");
//     controller.add("Bạn có khỏe không ?");
//   });

//   // Gửi tin nhắn cuối và đóng stream sau 4 giây
//   Future.delayed(Duration(seconds: 4), () {
//     print("Đang tải tin nhắn mới ......");
//     controller.add("Tạm biệt");
//     controller.close();
//   });

// }


void viDuGuiTinNhan() {
  print("===== 1 =====");
  print("Ví dụ 2: Stream controller");

  print("===== 2 =====");
  StreamController<String> controller = StreamController<String>();

  print("===== 3 =====");
  controller.stream.listen(
    (tinNhan) => print("[LISTENER] Nhận được: ${tinNhan}"),
    onDone: () => print("[LISTENER] Không còn tin nhắn nữa"),
  );

  print("===== 4 =====");
  print("Đang gửi tin nhắn đầu tiên......");

  print("===== 5 =====");
  controller.add("Xin chào!");   // Gửi ngay lập tức → listener nhận được ngay sau khi code sync chạy xong

  print("===== 6 =====");
  Future.delayed(Duration(seconds: 2), () {
    print("[FUTURE] Sau 2s → gửi tin nhắn thứ 2 .....");
    controller.add("Bạn có khỏe không ?");
  });

  print("===== 7 =====");
  Future.delayed(Duration(seconds: 4), () {
    print("[FUTURE] Sau 4s → gửi tin nhắn cuối .....");
    controller.add("Tạm biệt");
    controller.close();
  });

  print("===== 8 =====");
}

void main() {
  // viDuStreamDemSo();
  viDuGuiTinNhan();
}
