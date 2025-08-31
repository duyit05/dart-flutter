void main() {
  var r = ('first', x: 2, 5, 10.5); // record
  print(r);
  
  // record có 2 giá trị
  var point = (123, 456);

  // định nghĩa person
  var person = (name: 'Alice', age: 25,5);

  // truy xuất trong record
  // 1. truy xuất theo chỉ số
  
  print(point.$1);
  print(point.$2);

  // 2. truy xuất theo tên
  print(person.name);
  print(person.age);

  // bởi vì giá trị 5 chỉ có value không có key nên truy xuất qua chỉ số
  print(person.$1);
}
