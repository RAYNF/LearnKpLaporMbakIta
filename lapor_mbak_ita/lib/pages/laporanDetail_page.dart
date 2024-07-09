import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/get_report_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Laporan extends StatelessWidget {
  final Report dreport;

  Laporan({required this.dreport});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: true,
                    backgroundColor: primaryColor,
                    toolbarHeight: 75,
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: secondaryColor,
                      onPressed: () {
                        //error
                        Navigator.pop(context);
                      },
                    ),
                    actions: [
                      Container(
                        height: 65,
                        width: 75,
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Image.asset(
                          'assets/Logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ])
              ];
            },
            body: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/profil.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Username",
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Text(
                                dreport.createdAt.toString(),
                                style: primaryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            dreport.title,
                            style: primaryTextStyle.copyWith(fontWeight: bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Text(
                            dreport.description,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Lokasi",
                            style: primaryTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Text(
                            dreport.location,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 40,
                            width: 240,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/gmaps.jpeg',
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Lihat di Google Maps',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: darkColor),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: secondaryColor,
                                  side: BorderSide(width: 1, color: mutedColor),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin,
                              height: 220,
                              decoration: BoxDecoration(
                                color: mutedColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  dreport.image,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icon.png',
                                    height: 30,
                                    width: 30,
                                    color: darkColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2",
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: mutedColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    'assets/komen.png',
                                    height: 40,
                                    width: 40,
                                    color: darkColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    'assets/share.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 105,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Selesai',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: darkColor),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: selesaiColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            )
            //   body: Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Image.memory(base64Decode(report.image)),
            //       SizedBox(height: 16),
            //       Text(
            //         report.title,
            //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(height: 8),
            //       Text(report.description),
            //       SizedBox(height: 16),
            //       Text('Location: ${report.location}'),
            //     ],
            //   ),
            // ),
            ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: mutedColor,
                    width: 1.0), // Menambahkan border hanya pada bagian atas
              ),
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.home),
                    color: darkColor,
                    onPressed: () {
                      //error
                      // Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
                    },
                  ),
                  label: 'Laporan',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.newspaper),
                    color: darkColor,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Berita())));
                    },
                  ),
                  label: 'Berita',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.call),
                    color: darkColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CallCenter())));
                    },
                  ),
                  label: 'Call Center',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.person),
                    color: darkColor,
                    onPressed: () {
                      //error
                      //  Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
                    },
                  ),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: mutedColor,
              backgroundColor: secondaryColor,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
            )));
  }
}
