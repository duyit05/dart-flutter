void main() {
  // cách khai báo
  Set<String> set1 = {'A', 'B', 'C'};
  var set2 = <int>{1, 2, 3};
  Set<String> set3 = Set();
  var set4 = Set<int>.from([1, 2, 2, 3]); // từ list loại bỏ trùng

  print("=============== THÊM =================");
  set1.add('D'); // thêm 1 phần tử vào cuối
  set1.addAll({
    'E',
    'F',
  }); // thêm nhiều phần tử vào cuối
  print(set1);

  print("=============== Xóa =================");
  set1.remove('A'); // Xóa phần tử theo giá trị
  set1.removeAll(['E', 'F']); // xóa nhiều phần tử
  // set1.clear(); // xóa toàn bộ
  print(set1);

  print("=============== Kiểm tra và truy cập =================");
  print(set1.length);
  print(set1.isEmpty);
  print(set1.contains('A'));

  print("=============== Các phép toán tập hợp =================");
  var set5 = {1, 2, 3};
  var set6 = {3, 4, 5};

  // hợp set5 và set6
  var unino = set5.union(set6);
  // Giao -> tìm ra phần tử đều có trong 2 set
  var intersection = set5.intersection(set6);
  // Hiệu -> lấy ra các phần tử ở set5 khi gặp phần tử chung sẽ bỏ đi các phần tử ở sau
  var difference = set5.difference(set6);
  print(unino);
  print(intersection);
  print(difference);

  print("=============== Biến đổi =================");
  // chuyển set thành list
  var list = set1.toList();
  // tạo set mới
  var newSet = Set.from(set1);
  print(list);
  print(newSet);

  print("=============== Lọc =================");
  var filter = set1.where((element) => element.startsWith('B'));
  var mapped = set1.map((e) => e.toLowerCase());
  print(filter);
  print(mapped);

  print("================ QUẢN LÝ BẠN BÈ =============");
  // Ví dụ quản lý bạn bè
  Set<String> friends = {"user_1", "user_2", "user_3"};
  
  friends.add("user_4");
  friends.add("user_1");

  // kiểm tra bạn bè
  print(friends.contains("user_1"));

  // đề xuất bạn bè, chỉ lấy bạn bè mới không lấy bạn bè đã có trong set trước đó
  Set<String> suggestion = {"user_5","user_6","user_1"};
  var newFriend = suggestion.difference(friends);

  print(newFriend);
  print(friends);
}
