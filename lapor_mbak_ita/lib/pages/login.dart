import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/logosplash.png', height: 210, width: 210,),
            const SizedBox(height: 51,),
            Text("Welcome", style: primaryTextStyle, textAlign: TextAlign.center,),
            const SizedBox(height: 51,),
            SizedBox(
              child: Container(
                child: SizedBox(
                  height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )), child: Text('Register', style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor)))
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              child: SizedBox(
                height: 60, 
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context){
                      return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                        return Wrap(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Container(
                                
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40))
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 25,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Column(
                                          children: [
                                            Text("Hi!", style: primaryTextStyle.copyWith(fontSize: 20, color: secondaryColor),),
                                            Text("Register", style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30, color: secondaryColor),),
                                          ],
                                        ),
                                        const Spacer(),
                                        Center(
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Image.asset('assets/back.png', height: 30, width: 30,),
                                          ),
                                        ) 
                                        
                                      ],),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Nama Lengkap",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.person_outline),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Jenis Kelamin",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.visibility_outlined),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Email",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.mail_outline),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "No. handphone",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.phone_android_outlined),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Kata Sandi",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.lock_outlined),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Konfirmasi Kata Sandi",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.lock_outlined),)),),
                                        SizedBox(
                                          height: 21,
                                        ),
                                        Container(
                                          height: 60,
                                          width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text('Daftar', style: primaryTextStyle.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: primaryColor),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: primaryColor,
                                              shape: RoundedRectangleBorder(
                                              
                                                borderRadius: BorderRadius.circular(15)
                                              )
                                            ),),
                                          ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Sudah Mempunyai Akun?", style: primaryTextStyle.copyWith(
                                              color: darkColor, fontSize: 18
                                            ),),
                                            Text("Login", style: primaryTextStyle.copyWith(
                                              color: mutedColor, fontSize: 18
                                            ),)
                                          ],
                                        ),
                                        SizedBox(
                                          height: defaultMargin,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                    });
                },
                child: Text('Buat Akun',
                style: primaryTextStyle.copyWith(fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primaryColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))))),

              SizedBox(height: 15,),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                  onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context){
                      return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                        return Wrap(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Container(
                                
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40))
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 25,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Column(
                                          children: [
                                            Text("Welcome", style: primaryTextStyle.copyWith(fontSize: 20, color: secondaryColor),),
                                            Text("Login", style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30, color: secondaryColor),),
                                          ],
                                        ),
                                        const Spacer(),
                                        Center(
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Image.asset('assets/back.png', height: 30, width: 30,),
                                          ),
                                        ) 
                                        
                                      ],),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Email/No. Telp/NIP",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.person_outline),)),),
                                        SizedBox(
                                        height: 20,
                                      ),
                                      
                                      TextField(decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        hintText: "Kata Sandi",
                                        suffixIcon: InkWell(onTap: () {
                                          
                                        }, child: Icon(Icons.lock_outlined),)),),
                                        SizedBox(
                                          height: 21,
                                        ),
                                        Container(
                                          height: 60,
                                          width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text('Masuk', style: primaryTextStyle.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: primaryColor),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: primaryColor,
                                              shape: RoundedRectangleBorder(
                                              
                                                borderRadius: BorderRadius.circular(15)
                                              )
                                            ),),
                                          ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Belum Mempunyai Akun?", style: primaryTextStyle.copyWith(
                                              color: darkColor, fontSize: 18
                                            ),),
                                            Text("Daftar", style: primaryTextStyle.copyWith(
                                              color: mutedColor, fontSize: 18
                                            ),)
                                          ],
                                        ),
                                        SizedBox(
                                          height: defaultMargin,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                    });
                },
                child: Text('Login',
                style: primaryTextStyle.copyWith(fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primaryColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))))),
        ]),
      )
    );
  }
}