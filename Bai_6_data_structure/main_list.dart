void main() {
  // List
  List<String> list1 = ['A', 'B', 'C'];
  var list2 = [1, 2, 3];
  List<String> list3 = [];
  var list4 = List<int>.filled(3, 0);

  // Thêm phần tử
  list1.add('D');
  // Thêm nhiều phần tử
  list1.addAll(['A, C']);

  // Thêm vào vị trí
  list1.insert(0, 'Z');
  list1.insertAll(1, ['1', '0']);

  // xóa phần tử
  list1.remove('C');
  // xóa theo index
  list1.removeAt(0);
  // xóa ở cuối
  list1.removeLast();
  // xóa theo điều kiện
  list1.removeWhere((element) => element == 'B');
  list1.clear();
  print(list1);

  print("=============== Truy cập phần tử ===============");
  // lấy giá trị theo index
  print("Lấy ra phần tử tại vị trí thứ 0: ${list2[0]}");
  // lấy phần tử đầu tiên
  print("Lấy ra phần tử đầu tiên: ${list2.first}");
  // Lấy phần tử cuối cùng
  print("Lấy ra phần tử cuối cùng: ${list2.last}");
  // lấy ra size
  print("Lấy ra kích thước của List: ${list2.length}");

  print("=============== Kiểm tra list ===============");
  print(list2.isEmpty);
  print('List 3: ${list3.isNotEmpty ? 'KHôNG RỖNG' : 'RỖNG'}');
  // kiểm tra list có chứa giá trị không
  print(list4.contains(0));
  // vị trí của giá trị 0 ở đầu
  print(list4.indexOf(0));
  // vị trí chưá giá trị 0 ở cuối
  print(list4.lastIndexOf(0));

  print("=============== Biến đổi ===============");
  list4 = [2, 1, 3, 9, 0, 10];
  print("List ban đầu: ${list4}");
  // sắp xếp tăng dần
  list4.sort();
  print("List tăng dần: ${list4}");
  // sắp xếp giảm dần
  print("List giảm dần: ${list4.reversed.toList()}");

  print("=============== Cắt và nối List ===============");
  // lấy từ vị trí thứ 1 đến nhỏ hơn vị trí thứ 3 tức là chỉ lấy đến vị trí thứ 2
  var subList = list4.sublist(1,3);
  print(subList);
  var str_join = list4.join(",");
  print(str_join);
}
