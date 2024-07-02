import 'package:lapor_mbak_ita/data/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl =
      "http://192.168.1.12/flutter_api/";
  static const String _login = "login.php";
  
  Future<UserModel> userLogin(String username, String password) async {
    final response = await http.post(Uri.parse("$_baseUrl$_login"),
        body: {"username": username, "password": password});
    //hasil respon berupa json array
    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal terkoneksi");
    }
  }
  }