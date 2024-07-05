class LoginResponseModel {
  String status;
  String message;
  User? user;

  LoginResponseModel({
    required this.status,
    required this.message,
    required this.user,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        status: json["status"],
        message: json["message"],
        user: json["user"] != null ? User.fromJson(json["user"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "user": user?.toJson(),
      };
}

class User {
  String id;
  String username;
  String email;
  String phone;
  String password;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "phone": phone,
        "password": password,
      };
}
