// Định nghĩa 1 mixin để xử lý validation dữ liệu

mixin ValidationMixin {
  bool isEmalValid (String email) {
    final RegExp emailRegExp = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  bool isPasswordValid (String password) {
    // kiểm tra password có ít nhất 8 ký tự, chứa chữ hoa, chữ thường và số
    final RegExp passwordRegExp = RegExp(r"^(?=.{1}[a-z])(?=.{1}[a-z])(?=.*\d)[a-zA-Z\d]{8,}$");
    return passwordRegExp.hasMatch(password);
  }

  bool isPhoneNumberValid (String phoneNumber) {
    // Kiểm tra xem số điện thoại có hợp lệ không
    final RegExp phoneNumberRegExp = RegExp(r'^\+[0-9]{10,12}$');
    return phoneNumberRegExp.hasMatch(phoneNumber);
  }
}

// Tạo mixin để lưu trữ dữ liệu
mixin StorageMinxin {
  Future<void> saveData (String key, dynamic value) async {
    print("Lưu dữ liệu $value với key $key");
  }

  Future<dynamic> getData (String key) async {
    print("Lấy dữ liệu với key $key");
  }

  Future<void> removeData (String key) async {
    print("Xóa dự liệu với key $key");
  }
}

// Lớp cơ sở cho các màn hình đăng ký /  đăng nhập
class AuthScreen {
   void showLoading () {
    print("Hiển thị loading......");
   }

   void hiddenLoading () {
    print("Ẩn loading........");
   }

   void navigateToHome () {
    print("Chuyển đến trang chủ");
   }
}

// lớp màn hình đăng nhập kế thừa AuthScreen và sử dụng cả 2 mixin

class LoginScreen extends AuthScreen with ValidationMixin, StorageMinxin {
  String _email;
  String _password;

  LoginScreen(this._email, this._password);

  String get email => _email;
  void set email (String email) => _email = email;

  String get password => _password;
  void set password (String password) => _password = password;

  void login () {
    if (!isEmalValid(_email)){
      print("email invalid");
      return;
    }
    if (!isPasswordValid(_password)){
      print("password invalid!");
      return;
    }

    showLoading();

    // giả lập đăng nhập thành công
    print("Login successful with email: $_email");

    // Lưu trạng thái đăng nhập
    saveData('user_logged_in', true);
    saveData('user_email', _email);

    hiddenLoading();
    navigateToHome();
  }
}

// màn hình đăng ký cũng sử dụng các minxin tương tự
class SignupScreen extends AuthScreen with ValidationMixin, StorageMinxin {
  String email = '';
  String password = '';
  String phoneNumber = '';

  void signup () {
    if (!isEmalValid(email)){
      print("email invalid");
      return;
    }

    if (!isPasswordValid(password)){
      print("password invalid");
      return;
    }

    if (!isPhoneNumberValid(phoneNumber)){
      print("phone invalid");
      return;
    }

    // giả lập đăng ký thành công
    print("Sign up successful with email: $email and phone number: $phoneNumber");

    // lưu thông tin người dùng
    saveData("user_logged+in", true);
    saveData('user_email', email);
    saveData('user_phone', phoneNumber);

    hiddenLoading();
    navigateToHome();

  }
}
void main () {
    print("====================== LOGIN ==============================");
    LoginScreen login = new LoginScreen('duynv@gmail.com','Duynguyen123123' );
    login.login();
    print("====================== SIGN UP ==============================");
    SignupScreen signup = new SignupScreen();
    signup.email = 'nguyenvanduy@gmail.com';
    signup.password = 'Duynguyen12312';
    signup.phoneNumber = '+841234567890';
    signup.signup();
}