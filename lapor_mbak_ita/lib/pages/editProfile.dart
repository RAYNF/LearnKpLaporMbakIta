import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/profilePage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/PP.png'),
                          fit: BoxFit.cover)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                              color: secondaryColor,
                              shape: BoxShape.circle, 
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2,
                                  spreadRadius: 3,
                                  offset: Offset(-2, -1), 
                                ),
                              ],
                              ),
                              child: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28))
                ),
                child: Padding(padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: "Username123",
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
                        hintText: "Username123@gmail.com",
                        suffixIcon: InkWell(onTap: () {
                          
                        }, child: Icon(Icons.mail_outline)))),
                      SizedBox(height: 15,),
                      TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: "081-1234-5678-90",
                        suffixIcon: InkWell(onTap: () {
                          
                        }, child: Icon(Icons.phone_android_outlined)))),
                      SizedBox(height: 15,),
                      TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: "********",
                        suffixIcon: InkWell(onTap: () {
                          
                        }, child: Icon(Icons.lock_outline)))),
                      SizedBox(height: 15,),
                      TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: "********",
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
                            color: mutedColor)),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        color: mutedColor,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Image.asset('assets/google.jpeg', width: 25, height: 25,),
                          SizedBox(width: 20,),
                          Text("Terhubung", style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: mutedColor
                          ),),
                          SizedBox(width: 200,),
                          ElevatedButton(onPressed: (){

                          }, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Putuskan', style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            side: BorderSide(width: 1, color: darkColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )
                          ),)
                        ],
                      ),
                      Divider(
                        color: mutedColor,
                        thickness: 1,
                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
                          },
                          child: Text('Simpan', style: primaryTextStyle.copyWith(
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
                    ],
                  ),
                ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}