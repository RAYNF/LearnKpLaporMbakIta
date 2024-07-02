import 'package:flutter/material.dart';
// import 'package:lapor_mbak_ita/data/api_service.dart';
// import 'package:lapor_mbak_ita/data/user_model.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/registerPage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> loginUser() async {
    final response = await http.post(
      Uri.parse('http://192.168.1.12/flutter_auth/login.php'),
      body: {
        'email': _emailController.text,
        'password': _passwordController.text,
      },
    );

    final responseBody = jsonDecode(response.body);
    
    if (responseBody['message'] == 'Login successful') {
      // Login successful
      Navigator.pushReplacementNamed(context, '/beranda');
    } else {
      // Handle login error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(responseBody['message'])));
    }
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
          children: <Widget> [
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/Logo.png', width: 210,),
                ],
              )),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28))
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40,),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          labelText: 'Email',
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.person_outline)))),
                        SizedBox(height: 20,),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          labelText: 'Password',
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.lock_outline))),
                          obscureText: true,),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                SizedBox(width: 15,),
                                Text("Remember Me", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: mutedColor))
                              ],
                            ),
                            Text("Lupa Kata Sandi?", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: mutedColor)),
                          ],),
                          
                          SizedBox(height: 40,),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                            child: ElevatedButton(
                              onPressed: loginUser,
                              child: Text('Masuk', style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: secondaryColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)
                                )
                              ),),
                          ),
                          SizedBox(height: 15,),
                          Text("Atau", style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: darkColor
                          ),),
                          SizedBox(height: 15,),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/google.jpeg', height: 20,),
                                  SizedBox(width: 12,),
                                  Text('Masuk dengan Google', style: primaryTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: darkColor),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                                side: BorderSide(width: 1, color: mutedColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)
                                )
                              ),),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Belum Memiliki Akun?", style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: mutedColor
                              ),),
                              SizedBox(width: 10,),
                              TextButton(
                                style: TextButton.styleFrom(textStyle: 
                                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mutedColor)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Register())));
                            }, child: Text("Daftar"))
                            ],
                          )
                      ],
                    ),
                  ),
                )
              ))],
        ),
      ),)
    ); 
  }
}