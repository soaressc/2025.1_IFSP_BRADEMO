class LoginModel {
  final String email;
  final String password;

  LoginModel({required this.email, required this.password});

  bool isValid() {
    return email == 'admin' && password == '1234';
  }
}
