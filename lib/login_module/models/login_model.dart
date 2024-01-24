class LoginModel {
  String email;
  String password;

  LoginModel({required this.email, required this.password});

  //serializar
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'],
      password: json['password'],
    );
  }

  //desserializar
  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };

  //entidade vazia
  factory LoginModel.empty() {
    return LoginModel(
      email: '',
      password: '',
    );
  }
}
