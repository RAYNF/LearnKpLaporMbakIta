import 'package:lapor_mbak_ita/data/model/add_news_model.dart';
import 'package:lapor_mbak_ita/data/model/add_report_model.dart';
import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
import 'package:lapor_mbak_ita/data/model/get_report_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/data/model/register_model.dart';
import 'package:lapor_mbak_ita/data/model/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl =
      "http://192.168.1.10/belajar/LearnKpLaporMbakIta/lapor_mbak_ita/lib/data/database/";
  static const String _register = "register.php";
  static const String _login = "login.php";
  static const String _addReport = "add_report.php";
  static const String _getReport = "get_reports.php";
  static const String _addNews = "add_report.php";
  static const String _getNews = "get_reports.php";

  Future<RegisterResponseModel> userRegister(String username, String email,
      String phone, String password, String confirm_password) async {
    final response = await http.post(Uri.parse("$_baseUrl$_register"), body: {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
      "confirm_password": confirm_password
    });
    //hasil respon berupa json array
    if (response.statusCode == 200) {
      return RegisterResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal terkoneksi");
    }
  }

  Future<LoginResponseModel> userLogin(String email, String password) async {
    final response = await http.post(Uri.parse("$_baseUrl$_login"),
        body: {"email": email, "password": password});

    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal login");
    }
  }

  Future<AddReportModel> addReport(String title, String description,
      String ketLocation, String image) async {
    final response = await http.post(Uri.parse("$_baseUrl$_addReport"), body: {
      "title": title,
      "description": description,
      "location": ketLocation,
      "image": image
    });

    if (response.statusCode == 200) {
      return AddReportModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal add report");
    }
  }

  Future<GetReportModel> getReportAll() async {
    final response = await http.post(Uri.parse("$_baseUrl$_getReport"));
    if (response.statusCode == 200) {
      return GetReportModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal ambil berita");
    }
  }

  Future<AddNewsModel> addNews(String title, String description,
      String ketLocation, String image) async {
    final response = await http.post(Uri.parse("$_baseUrl$_addNews"), body: {
      "title": title,
      "description": description,
      "location": ketLocation,
      "image": image
    });

    if (response.statusCode == 200) {
      return AddNewsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal add report");
    }
  }

  Future<GetNewsModel> getNewsAll() async {
    final response = await http.post(Uri.parse("$_baseUrl$_getNews"));
    if (response.statusCode == 200) {
      return GetNewsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("gagal ambil berita");
    }
  }
}
