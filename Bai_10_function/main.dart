// viết hàm đầy đủ
int tinhTongDayDu(int a, int b, int c) {
  return a + b + c;
}

// viết rút gọn
int tinhTongRutGon(int a, int b, int c) => a + b + c;

// hàm với tên của tham số
// khi gọi 1 hàm (function), ta có thể truyền giá trị thông qua tên biến paramName : value
String createPerson({String? firstName, String? lastName, String? age}) {
 
  firstName = (firstName == "" || firstName == null) ? "Chưa có tên" : firstName;
  lastName = (lastName == "" || lastName == null) ? "Chưa có họ" : lastName;
  age = (age == "" || age == null) ? "Chưa có tuổi" : age;
  
  return "Tên: ${firstName}  - Họ: ${lastName} - Tuổi: ${age}";
}

// hàm có tham số tùy chọn (optional) có hay không cũng được
// khi tham số tùy chọn không được cung cấp thì sẽ nhận giá trị null
// các tham số trong [] thì không bắt buộc, có hoặc không
int sum (int a, [int? b, int? c, int? d]){
  int result = a;

  result += (b != null ? b : 0);
  result += (c != null ? c : 0);
  result += (d != null ? d : 0);

  return result;
}

// hàm vô danh => là lamda hoặc closure
// chúng thường được sử dụng trong các ngữ cảnh mà ta không cần sử dụng tên hàm
// ví dụ như khi truyền hàm như tham số cho hàm khác




void main() {
  print("Tính tổng đầy đủ: ${tinhTongDayDu(5, 5, 5)}");
  print("Tính tổng rút gọn: ${tinhTongRutGon(10, 10, 10)}");

  print("========================= HÀM TRUYỀN THEO TÊN PARAMETER =======================================");
  var createPerson1 = createPerson(firstName: "Duy", lastName: "Nguyễn", age: "23");

  // mặc dù truyền không đúng thứ tự của ham nhưng kết quả in ra vẫn đúng thứ tự khi gọi hàm
  var createPerson2 = createPerson(age: "23", firstName: "Duy", lastName: "Nguyễn");

  // gọi hàm cố tình truyền thiếu 1 parametter
  var createPerson3 = createPerson(lastName: "Nguyễn", age: "23");

  print(createPerson1);
  print(createPerson2);
  print(createPerson3);

  print("========================= HÀM TRUYỀN THEO [] OPTIONAL =======================================");
  var transmitOneParameter = sum(5,5);
  print("Truyền 1 tham số trong [b = ${5}]: ${transmitOneParameter}");
  
  var transmitTwoParameter = sum(5,5,5);
  print("Truyền 2 tham số trong [b = ${5},c = ${5}]: ${transmitTwoParameter}");

  var transmitThreeParameter = sum(5,6,7,8);
  print("Truyền 3 tham số trong [b = ${6}, c = ${7}, d = ${7}]: ${transmitThreeParameter}");

  print("Hàm optional: ${sum(5)}");

  print("========================= HÀM ẨN DANH =======================================");
  var anonymousFunction = (var a, var b){
      return a + b;
  };

  print("Hàm ẩn danh: ${anonymousFunction(5,5)}");
  

}
