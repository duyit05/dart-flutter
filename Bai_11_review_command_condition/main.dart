import 'dart:io';

void main() {
  int month = 0;
  stdout.write("Nhập vào tháng: ");
  String? inputMonth = stdin.readLineSync();
  if (inputMonth != null) month = int.tryParse(inputMonth) ?? 0;

  switch (month) {
    case 1:
      print("Tháng có 31 ngày");
      break;
    case 2:
      print("Tháng có 28 ngày");
      break;
    case 3:
      print("Tháng có 31 ngày");
      break;
    case 4:
      print("Tháng có 30 ngày");
      break;
    case 5:
      print("Tháng có 31 ngày");
      break;
    case 6:
      print("Tháng có 30 ngày");
      break;
    case 7:
      print("Tháng có 31 ngày");
      break;
    case 8:
      print("Tháng có 31 ngày");
      break;
    case 9:
      print("Tháng có 30 ngày");
      break;
    case 10:
      print("Tháng có 31 ngày");
      break;
    case 11:
      print("Tháng có 30 ngày");
      break;
    case 12:
      print("Tháng có 31 ngày");
      break;
    default:
      print("Tháng không xác định");
  }
}
