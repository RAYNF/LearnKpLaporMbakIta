import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
import 'package:lapor_mbak_ita/pages/daftarLaporan_page.dart';
import 'package:lapor_mbak_ita/pages/editProfile_page.dart';
import 'package:lapor_mbak_ita/pages/login_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Profile extends StatelessWidget {
  final User dataUser;
  const Profile({super.key, required this.dataUser});

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
          body: Stack(children: [
            Positioned.fill(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/PP.png',
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        dataUser.username,
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "952 Laporan",
                        style: primaryTextStyle.copyWith(fontWeight: bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 60,
                        width: 270,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => DaftarLaporan(dataUser: dataUser,))));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Lihat Laporan',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                              side: BorderSide(width: 1, color: mutedColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 270,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => EditProfile(dataUser: dataUser,))));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/edit.png',
                                height: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Edit Profile',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                              side: BorderSide(width: 1, color: mutedColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        width: 270,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Log Out',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 16, fontWeight: bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Text(
                                    'Apakah Anda yakin ingin keluar?',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                offset: Offset(-2, 4),
                                              ),
                                            ],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              // Mengirimkan nilai 'true' ke fungsi penanganan
                                              Navigator.of(context).pop(true);
                                            },
                                            child: Text(
                                              'Ya',
                                              style: primaryTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: bold),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                offset: Offset(-2, 4),
                                              ),
                                            ],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              // Mengirimkan nilai 'false' ke fungsi penanganan
                                              Navigator.of(context).pop(false);
                                            },
                                            child: Text(
                                              'Tidak',
                                              style: primaryTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: bold,
                                                  color: secondaryColor),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ).then((value) {
                              // Menerima hasil dari popup notifikasi
                              if (value == true) {
                                // Tindakan jika pengguna memilih 'Ya'
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Login())));
                                print('Aksi dilanjutkan');
                              } else {
                                // Tindakan jika pengguna memilih 'Tidak'
                                print('Aksi dibatalkan');
                              }
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/logout-removebg-preview.png',
                                height: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Log Out',
                                style: primaryTextStyle.copyWith(
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
                                  borderRadius: BorderRadius.circular(15))),
                        ),
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
                    child: Text(
                      'Sapa Mbak Ita Versi 4.0.1246.v49',
                      style: primaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ]),
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
                      Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda(dataUser: dataUser,))));
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
                          MaterialPageRoute(builder: ((context) => Berita(dataUser: dataUser,))));
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
                              builder: ((context) => CallCenter(dataUser: dataUser,))));
                    },
                  ),
                  label: 'Call Center',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.person),
                    color: darkColor,
                    onPressed: () {
                      //Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
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
