import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: primaryColor,
        actions: [
          Container(
            height: 65, width: 75,
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image.asset('assets/Logo.png', fit: BoxFit.fill,),
          ),
        ]
      ),
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
      )
      ),
    );
  }
}