void main() {

  var kiemTra = (100 % 3 == 0 ? "100 là số chẵn" : "100 là số lẻ");
  print(kiemTra);


  // expr1 ?? expr2
  // Nếu expr1 không null thì trả về giá trị của nó, ngược lại trả về giá trị expr2
  
  var x = 100;
  var y = x ?? 50;

  print(y);

  int? z;
  y = z ?? 30;

  print(y);
}
