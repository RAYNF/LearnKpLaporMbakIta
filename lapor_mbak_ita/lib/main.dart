import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/buatLaporan.dart';
import 'package:lapor_mbak_ita/pages/laporanDetail.dart';
import 'package:lapor_mbak_ita/pages/loginPage.dart';
import 'package:lapor_mbak_ita/pages/registerPage.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
      ),
      home: BuatLaporan(),
    );
  }
}

