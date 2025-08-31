void main() {
  // khai báo
  Map<String, dynamic> user1 = {'name': 'Duy', 'age': 23, 'isStudent': false};

  var user2 = <String, dynamic>{'name': 'Hoa', 'age': 25};

  print("========================== CÁC PHƯƠNG THỨC =======================");

  // thêm 1 key - value vào map nếu chưa tồn tại thì tạo mới, đã tồn tại thì ghi đè
  user1['email'] = 'duy@gmail.com';
  // cập nhật giá trị của key trong map
  user1['age'] = 30;

  // thêm nếu key - value chưa tồn tại, nếu đã tồn tại thì không làm gì cả
  user1.putIfAbsent('phone', () => '0944202896');

  // thêm nhiều thông tin
  user1.addAll({'address': 'Đà Nẵng', 'gender': 'Male'});

  print(user1);

  print("========================== XÓA =======================");
  // xóa theo key
  user1.remove('age');
  // xóa theo điều kiện nếu cột value có giá trị null thì sẽ xóa
  user1.removeWhere((key, value) => value == null);

  print(user1);

  print("========================== TRUY CẬP =======================");
  // lấy value theo key
  print(user1['name']);
  print(user1.length);

  // lấy value an toàn với giá trị mặc định
  String phone = user1['phone'] ?? 'Không có số điện thoại';

  print(phone);
  print(user1);

  print("========================== KIỂM TRA =======================");
  print(user1.isEmpty);
  print(user1.isNotEmpty);
  // kiểm tra key có tồn tại hay không
  print(user1.containsKey('name'));
  // kiểm tra value có tồn tại hay không
  print(user1.containsValue('Nam'));

  print("========================== LẤY DANH SÁCH =======================");
  print(user1.keys); // Lấy tất cả key
  print(user1.values); // lấy tất cả value
  print(user1.entries); // lấy tất cả entry

  print("========================== DUYỆT MAP =======================");
  user1.forEach((key, value) {
    print("$key : $value");
  });

  print("========================== BIẾN ĐỔI =======================");
  // Viết hoa key
  var upperMap = user1.map((key, value) => MapEntry(key.toUpperCase(), value));
  print(upperMap);
  // Lọc map
  var filterMap =
      user1.entries.where((element) => element.value is String).toList();
  print('Filter map: ${filterMap}');

  // Ví dụ lưu thông tin sản phẩm trong giỏ hàng
  Map<String, dynamic> cart = {'SP001': 2, 'SP002': 1, 'SP003': 3};
}
