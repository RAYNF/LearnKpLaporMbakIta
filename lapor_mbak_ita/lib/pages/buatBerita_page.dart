import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapor_mbak_ita/data/api/api_service.dart';
import 'package:lapor_mbak_ita/data/model/add_news_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';


class BuatBerita extends StatefulWidget {
  final User dataUser;

  const BuatBerita({super.key, required this.dataUser});

  @override
  _BuatBeritaState createState() => _BuatBeritaState();
}

class _BuatBeritaState extends State<BuatBerita> {
  final TextEditingController _judul = TextEditingController();
  final TextEditingController _deskripsi = TextEditingController();
  final TextEditingController _lokasiLongtitude = TextEditingController();
  final TextEditingController _lokasiLatitude = TextEditingController();
  final TextEditingController _urlImage = TextEditingController();
  final TextEditingController _keteranganLokasi = TextEditingController();

  late Future<AddNewsModel> _addNews;
  late AddNewsModel addNewsModel;

  void dispose() {
    _judul.dispose();
    _deskripsi.dispose();
    _urlImage.dispose();
    _keteranganLokasi.dispose();
    _lokasiLatitude.dispose();
    _lokasiLongtitude.dispose();
    super.dispose();
  }

  void _submitReport() {
    _addNews = ApiService().addNews(
        _judul.text, _deskripsi.text, _keteranganLokasi.text, _urlImage.text);
    _addNews.then((value) {
      addNewsModel = value;
      if (addNewsModel.status == "success") {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Add report"),
              content: Text(addNewsModel.message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Berita(
                        dataUser: widget.dataUser,
                      );
                    }));
                  },
                  child: Text("ok"),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("add report"),
              content: Text(addNewsModel.message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("coba lagi"),
                ),
              ],
            );
          },
        );
      }
    }).catchError((error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(error.toString()),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("coba lagi"),
              ),
            ],
          );
        },
      );
    });
  }

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
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: secondaryColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Batalkan Laporan',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          'Apakah Anda yakin ingin membatalkan laporan?',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Divider(
                                color: mutedColor,
                                thickness: 1,
                              ),
                              TextButton(
                                onPressed: () {
                                  // Mengirimkan nilai 'true' ke fungsi penanganan
                                  Navigator.of(context).pop(true);
                                },
                                child: Text(
                                  'Ya',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                              ),
                              Divider(
                                color: mutedColor,
                                thickness: 1,
                              ),
                              TextButton(
                                onPressed: () {
                                  // Mengirimkan nilai 'false' ke fungsi penanganan
                                  Navigator.of(context).pop(false);
                                },
                                child: Text(
                                  'Tidak',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor),
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
                      //blm ada
                      // Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
                      print('Aksi dilanjutkan');
                    } else {
                      // Tindakan jika pengguna memilih 'Tidak'
                      print('Aksi dibatalkan');
                    }
                  });
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
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    "UrlGambar",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold),
                  ),
                  TextField(
                    /*controller: _titleController,*/ decoration:
                        InputDecoration(labelText: 'url gambar'),
                    controller: _urlImage,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Judul",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold),
                  ),
                  TextField(
                    /*controller: _titleController,*/ decoration:
                        InputDecoration(labelText: 'title'),
                    controller: _judul,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Deskripsi",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold),
                  ),
                  TextField(
                    /*controller: _descriptionController,*/ decoration:
                        InputDecoration(labelText: 'description'),
                    controller: _deskripsi,
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Keterangan Lokasi",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'detail'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Laporan Rahasia",
                          style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: mutedColor))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 35,
                          width: 90,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: darkColor, width: 1)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Reset',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 50,
                          width: 165,
                          child: Container(
                            child: ElevatedButton(
                              // onPressed: _submitReport,
                              onPressed: _submitReport,
                              child: Text(
                                'Buat Laporan',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: bold,
                                    color: secondaryColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}