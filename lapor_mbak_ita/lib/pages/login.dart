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
            Image.asset('assets/Logo.png', height: 300, fit: BoxFit.fill),
            const SizedBox(height: 51,),
            Text("Welcome", style: primaryTextStyle, textAlign: TextAlign.center,),
            const SizedBox(height: 51,),
            SizedBox(
              height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )), child: Text('Login', style: primaryTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w500, color: secondaryColor)))
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
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
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )), child: Text('Register', style: primaryTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w500, color: secondaryColor)),)
            )
          ]
        ),
      ),
    );
  }
}