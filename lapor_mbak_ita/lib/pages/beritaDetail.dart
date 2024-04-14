import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/berita.dart';
import 'package:lapor_mbak_ita/pages/callCenter.dart';
import 'package:lapor_mbak_ita/pages/profilePage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class BeritaDetail extends StatelessWidget {
  const BeritaDetail({super.key});

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
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Text("Lorem Ipsum is simply dummy text of the printing and  typesetting", 
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold
                  ),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rabu, 14 Mei 2024", style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(width: 15,),
                      Text("20:00 WIB", style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry's standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.", 
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Text("It is a long established fact that a reader will be distracted by the  readable content of a page when looking at its layout. The point of  using Lorem Ipsum is that it has a more-or-less normal distribution of  letters, as opposed to using 'Content here, content here', making it  look like readable English. Many desktop publishing packages and web  page editors now use Lorem Ipsum as their default model text, and a  search for 'lorem ipsum' will uncover many web sites still in their  infancy. Various versions have evolved over the years, sometimes by  accident, sometimes on purpose (injected humour and the like).", 
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Text("Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry's standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.", 
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Text("It is a long established fact that a reader will be distracted by the  readable content of a page when looking at its layout. The point of  using Lorem Ipsum is that it has a more-or-less normal distribution of  letters, as opposed to using 'Content here, content here', making it  look like readable English. Many desktop publishing packages and web  page editors now use Lorem Ipsum as their default model text, and a  search for 'lorem ipsum' will uncover many web sites still in their  infancy. Various versions have evolved over the years, sometimes by  accident, sometimes on purpose (injected humour and the like).", 
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify,),
                ],
              ),
            ),
          ),
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