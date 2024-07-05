import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/pages/profile_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class CallCenter extends StatelessWidget {
  const CallCenter({super.key});

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
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: darkColor.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(2,3)
                                )
                              ]
                            ), child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/diskominfo.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("DISKOMINFO", style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor : \t0842-8736-767", style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Image.asset('assets/copy.png'),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Divider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alamat : \t", 
                                style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jl. Pemuda No. 148, Sekayu,\n Kec. Semarang Tengah, Kota\n Semarang, Jawa Tengah\n 50132", 
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                    ),
                                    textAlign: TextAlign.justify,),
                                    Image.asset('assets/copy.png'),
                                  ]
                                ))
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: darkColor,
                      thickness: 1,
                    ),
                ],
              ),
            ),
          )
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
                //error
                // Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
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
                
              },),
              label: 'Call Center',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.person), color: darkColor,onPressed: () {
                //error
                //  Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
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