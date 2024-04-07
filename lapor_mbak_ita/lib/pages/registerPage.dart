import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/loginPage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                        SizedBox(height: 20,),
                        TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Nama Lengkap",
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.person_outline)))),
                        SizedBox(height: 15,),
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
                              SizedBox(width: 15,),
                              Text("Laki-laki", style: primaryTextStyle.copyWith(
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
                              SizedBox(width: 15,),
                              Text("Perempuan", style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: mutedColor))
                            ],
                          ),
                        ],),
                        SizedBox(height: 15,),
                        TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Email",
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.mail_outline)))),
                        SizedBox(height: 15,),
                        TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "No. Handphone",
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.phone_android_outlined)))),
                        SizedBox(height: 15,),
                        TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Password",
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.lock_outline)))),
                        SizedBox(height: 15,),
                        TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Konfirmasi Password",
                          suffixIcon: InkWell(onTap: () {
                            
                          }, child: Icon(Icons.lock_outline)))),
                          SizedBox(height: 15,),
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
                                Text("Saya Penyandang Disabilitas", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: mutedColor))
                              ],
                            ),
                          SizedBox(height: 40,),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
                              },
                              child: Text('Daftar', style: primaryTextStyle.copyWith(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sudah Memiliki Akun?", style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: mutedColor
                              ),),
                          SizedBox(width: 10,),
                          TextButton(
                            style: TextButton.styleFrom(textStyle: 
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mutedColor)),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: ((context) => Login())));
                            }, child: Text("Login"))    
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