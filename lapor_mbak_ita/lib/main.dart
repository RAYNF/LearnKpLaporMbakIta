import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/report_model.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/pages/beritaDetail_page.dart';
import 'package:lapor_mbak_ita/pages/buatLaporan_page.dart';
import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
import 'package:lapor_mbak_ita/pages/editProfile_page.dart';
import 'package:lapor_mbak_ita/pages/laporanDetail_page.dart';
import 'package:lapor_mbak_ita/pages/login_page.dart';
import 'package:lapor_mbak_ita/pages/profile_page.dart';
import 'package:lapor_mbak_ita/pages/register_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/beranda',
      // routes: {
      //   '/login' : (context) => Login(),
      //   '/beranda' : (context) => Beranda(),
      //   '/buat_laporan' : (context) => BuatLaporan(),
      // },
      // onGenerateRoute: (settings){
      //   if (settings.name == '/laporan_detail') {
      //     final Report report = settings.arguments as Report;
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return Laporan(report: report);
      //       },
      //     );
      //   }
      //   return null;
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
      ),
      home: Login(),
    );
  }
}
