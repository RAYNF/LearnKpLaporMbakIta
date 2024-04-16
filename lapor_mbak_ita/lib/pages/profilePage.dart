import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/berita.dart';
import 'package:lapor_mbak_ita/pages/callCenter.dart';
import 'package:lapor_mbak_ita/pages/daftarLaporan.dart';
import 'package:lapor_mbak_ita/pages/editProfile.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: primaryColor,
              toolbarHeight: 75,
              actions: [
                Container(
                  height: 65, width: 75,
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset('assets/Logo.png', fit: BoxFit.fill,),
                ),
              ]
            )
          ];
        },
        body: Stack(
          children: [
            Positioned.fill(
            child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/PP.png', width: 150, height: 150,),
                SizedBox(height: 5,),
                Text("Username", style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold
                ),),
                SizedBox(height: 20,),
                Text("952 Laporan", style: primaryTextStyle.copyWith(
                  fontWeight: bold
                ),),
                SizedBox(height: 40,),
                Container(
                  height: 60,
                  width: 270,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: ((context) => DaftarLaporan())));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Lihat Laporan', style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      side: BorderSide(width: 1, color: mutedColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 60,
                  width: 270,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: ((context) => EditProfile())));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/edit.png', height: 25,),
                        SizedBox(width: 10,),
                        Text('Edit Profile', style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      side: BorderSide(width: 1, color: mutedColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 60,
                  width: 270,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logout-removebg-preview.png', height: 25,),
                        SizedBox(width: 10,),
                        Text('Log Out', style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                          color: primaryColor),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      side: BorderSide(width: 1, color: primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),),
                ),
              ],
            ),
            ),
          ),
          ),  
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Sapa Mbak Ita Versi 4.0.1246.v49',style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: mutedColor, width: 1.0), // Menambahkan border hanya pada bagian atas
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
              },),
              label: 'Laporan',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.newspaper), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Berita())));
              },),
              label: 'Berita',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.call), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => CallCenter())));
              },),
              label: 'Call Center',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.person), color: darkColor,onPressed: () {
                 //Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
              },),
              label: 'Profile',
            ),
          ],
          selectedItemColor: mutedColor,
          backgroundColor: secondaryColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
        )
      )
    );
  }
}