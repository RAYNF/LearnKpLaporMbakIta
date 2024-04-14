import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/berita.dart';
import 'package:lapor_mbak_ita/pages/buatLaporan.dart';
import 'package:lapor_mbak_ita/pages/callCenter.dart';
import 'package:lapor_mbak_ita/pages/laporanDetail.dart';
import 'package:lapor_mbak_ita/pages/profilePage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

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
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 60,
                      width: 120,
                      child: ElevatedButton(onPressed: (){
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context, 
                          builder: (context){
                            return StatefulBuilder(
                              builder: (BuildContext context, StateSetter setState){
                                return Wrap(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: darkColor, width: 3),
                                          color: secondaryColor,
                                          borderRadius:
                                          BorderRadius.only(
                                            topLeft: Radius.circular(28),
                                            topRight: Radius.circular(28),)),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 25,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                Text("Filter", style: primaryTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: darkColor,
                                                ),),
                                                Text("Reset", style: primaryTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: mutedColor
                                                ),)
                                              ],),
                                              SizedBox(height: 45,),
                                              Text("Urutkan", style: primaryTextStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: darkColor,
                                              ),),
                                              SizedBox(height: 15,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Terbaru", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),)),
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Terpopuler", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),)),
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Terdekat", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),))
                                                ],
                                              ),
                                              SizedBox(height: 35,),
                                              Text("Status", style: primaryTextStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: darkColor,
                                              ),),
                                              SizedBox(height: 15,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Verifikasi", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),)),
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Diproses", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),)),
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: darkColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Selesai", style: TextStyle(
                                                      color: darkColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),))
                                                ],
                                              ),
                                              SizedBox(height: 60,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),),
                                                    ),
                                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade100), 
                                                        side: MaterialStateProperty.all<BorderSide>(
                                                          BorderSide(color: mutedColor, width: 1),)
                                                    ),
                                                    onPressed: (){
                                                    
                                                    }, child: Text("Terapkan", style: TextStyle(
                                                      color: mutedColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                    ),))
                                                ],
                                              ),
                                              SizedBox(height: 20,),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                          });
                      }, 
                      child: Text("Filter",
                        style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: darkColor),),
                        style: ElevatedButton.styleFrom(backgroundColor: secondaryColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: darkColor, width: 1),
                          borderRadius: BorderRadius.circular(7))),
                      ),
                    ),
                  ], 
                  ),
              ],
            ),
          ];
        },
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Laporan())));
              },
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/profil.png', height: 40, width: 40,),
                        SizedBox(width: 20,),
                        Text("Username", style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 260,),
                        Text("DD-MM-YYYY", style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.",
                      textAlign: TextAlign.justify,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                      height: 220,
                      decoration: BoxDecoration(
                        color: mutedColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/laporan 1.jpg', fit: BoxFit.cover,),
                      ) 
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                        Image.asset('assets/icon.png', height: 30, width: 30, color: darkColor,),
                        SizedBox(width: 5,),
                        Text("2", style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: mutedColor,
                        ),),
                        SizedBox(width: 5,),
                        Image.asset('assets/komen.png', height: 40, width: 40, color: darkColor,),
                        SizedBox(width: 5,),
                        Image.asset('assets/share.png', height: 30, width: 30,),
                        SizedBox(width: 235,),
                        Container(
                            height: 30,
                            width: 105,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text('Verifikasi', style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: darkColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: verifikasiColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))
                              ),),
                        ),
                      ],
                    ),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/profil.png', height: 40, width: 40,),
                        SizedBox(width: 20,),
                        Text("Username", style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 260,),
                        Text("DD-MM-YYYY", style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.",
                      textAlign: TextAlign.justify,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                      height: 220,
                      decoration: BoxDecoration(
                        color: mutedColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/laporan 2.jpeg', fit: BoxFit.cover,),
                      ) 
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                        Image.asset('assets/icon.png', height: 30, width: 30, color: darkColor,),
                        SizedBox(width: 5,),
                        Text("2", style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: mutedColor,
                        ),),
                        SizedBox(width: 5,),
                        Image.asset('assets/komen.png', height: 40, width: 40, color: darkColor,),
                        SizedBox(width: 5,),
                        Image.asset('assets/share.png', height: 30, width: 30,),
                        SizedBox(width: 235,),
                        Container(
                            height: 30,
                            width: 105,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text('Selesai', style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: darkColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: selesaiColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))
                              ),),
                        ),
                      ],
                    ),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => BuatLaporan())));
        }, child: Icon(Icons.add, color: secondaryColor,), 
        backgroundColor: primaryColor,
        shape: CircleBorder(),),
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
                //Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
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
                 Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
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