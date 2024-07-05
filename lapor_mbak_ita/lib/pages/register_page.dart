import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/api/api_service.dart';
import 'package:lapor_mbak_ita/data/model/register_model.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/login_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  late Future<RegisterResponseModel> _registeruser;
  late RegisterResponseModel registerResponseModel;

  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  // Future<void> registerUser() async {
  //   final response = await http.post(
  //     Uri.parse('http://192.168.1.12/flutter_auth/register.php'),
  //     body: {
  //       'username': _usernameController.text,
  //       'email': _emailController.text,
  //       'phone': _phoneController.text,
  //       'password': _passwordController.text,
  //       'confirm_password': _confirmPasswordController.text,
  //     },
  //   );

  //   final responseBody = jsonDecode(response.body);

  //   if (responseBody['status'] == 'success') {
  //     Navigator.pushReplacementNamed(context, '/login');
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(responseBody['message'])));
  //   }
  // }

  void registerUser() {
    _registeruser = ApiService().userRegister(
        _usernameController.text,
        _emailController.text,
        _phoneController.text,
        _passwordController.text,
        _confirmPasswordController.text);
    _registeruser.then((value) {
      registerResponseModel = value;
      if (registerResponseModel.succes == true) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("register"),
              content: Text(registerResponseModel.message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                  child: Text("login"),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("register"),
              content: Text(registerResponseModel.message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("coba lagi"),
                ),
              ],
            );
          },
        );
      }
    }).catchError((error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("error"),
            content: Text(error.toString()),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("coba lagi"),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Container(
        color: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/Logo.png',
                      width: 210,
                    ),
                  ],
                )),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(28))),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    labelText: 'Username',
                                    suffixIcon: InkWell(
                                        onTap: () {},
                                        child: Icon(Icons.person_outline)))),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text("Laki-laki",
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: mutedColor))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text("Perempuan",
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: mutedColor))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    labelText: 'Email',
                                    suffixIcon: InkWell(
                                        onTap: () {},
                                        child: Icon(Icons.mail_outline)))),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                                controller: _phoneController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    labelText: 'Phone',
                                    suffixIcon: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                            Icons.phone_android_outlined)))),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Password',
                                  suffixIcon: InkWell(
                                      onTap: () {},
                                      child: Icon(Icons.lock_outline))),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: _confirmPasswordController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Confirm Password',
                                  suffixIcon: InkWell(
                                      onTap: () {},
                                      child: Icon(Icons.lock_outline))),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Saya Penyandang Disabilitas",
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: mutedColor))
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin,
                              child: ElevatedButton(
                                onPressed: registerUser,
                                child: Text(
                                  'Daftar',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: secondaryColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28))),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sudah Memiliki Akun?",
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: mutedColor),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: mutedColor)),
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: ((context) => Login())));
                                      registerUser();
                                    },
                                    child: Text("Login"))
                              ],
                            )
                          ],
                        ),
                      ),
                    )))
          ],
        ),
      ),
    ));
  }
}
