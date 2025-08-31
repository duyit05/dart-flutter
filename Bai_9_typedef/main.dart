// tạo 1 typedef cho kiểu List số nguyên
typedef IntList<X> = List<X>;
typedef ListMapper<X> = Map<X, List<X>>;
void main() {
  /*
    - Dùng để định nghĩa một kiểu hàm (function type) và đặt cho nó 1 cái tên dễ nhớ
    - Giúp tạo 1 bí danh (alias) cho 1 loại hàm nào đó  
  */
  IntList<int> il = [1, 2, 3, 4, 5, 6];
  print(il);

  // Nhận vào 1 String thì tất cả các biến generic sẽ là String
  ListMapper<String> listMapper = {
    'fruits': ['Apple', 'Banana', 'Orange'],
    'animals': ['Lion', 'Tiger', 'Monkey']
  };
  print(listMapper);

  ListMapper<int> listMapperInt = {
    1: [1, 2, 3],
    5: [5, 6, 7]
  };
  print(listMapperInt);
}
