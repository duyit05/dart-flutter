
// khai báo theo kiểu lazy initialization
late String description;

void main() {
  String name = "Duy";
  int age = 18;

  if(age >= 18){
    print("Hello $name");
  }

  // xử lý biến có thể null
  String? ten;
  ten = null;
  
  description = "Nguyễn Văn Duy";

  // biến final chỉ được gắn giá trị 1 lần
  final String name1 = "Duy";
  // sử dụng late để gắn giá trị sau
  late final String name2;
  name2 = "Hải";

  
  // Hằng số const khi khai báo phải gắn giá trị ngay lập tức
  const color = "Red";
  const int meterial = 1;

}
