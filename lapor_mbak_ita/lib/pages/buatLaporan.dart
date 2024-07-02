import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';


class BuatLaporan extends StatefulWidget {
  @override
  _BuatLaporanState createState() => _BuatLaporanState();
}

class _BuatLaporanState extends State<BuatLaporan> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _submitReport() async {
    if (_image == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select an image')));
      return;
    }

    final request = http.MultipartRequest('POST', Uri.parse('http://192.168.1.12/flutter_auth/add_report.php'));
    request.fields['title'] = _titleController.text;
    request.fields['description'] = _descriptionController.text;
    request.fields['location'] = _locationController.text;
    request.files.add(await http.MultipartFile.fromPath('image', _image!.path));

    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    final responseJson = jsonDecode(responseBody);

    if (responseJson['status'] == 'success') {
      Navigator.pushReplacementNamed(context, '/beranda');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(responseJson['message'])));
    }
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
                        title: Text('Batalkan Laporan', style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold
                        ),
                        textAlign: TextAlign.center,),
                        content: Text('Apakah Anda yakin ingin membatalkan laporan?', style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.center,),
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
                                child: Text('Ya', style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green
                                ),),
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
                                child: Text('Tidak', style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor
                                ),),
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
                      Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
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
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _image == null ? Text('No image selected.') : Image.file(_image!),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: _pickImage, child: Text('Pick Image')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/ambilUlang.png', width: 20, height: 20,
                      color: mutedColor,),
                      SizedBox(width: 5,),
                      Text("Ambil Ulang Gambar", style: primaryTextStyle.copyWith(
                        color: mutedColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Judul", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(controller: _titleController, decoration: InputDecoration(labelText: 'title'),),
                  SizedBox(height: 30,),
                  Text("Deskripsi", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(controller: _descriptionController, decoration: InputDecoration(labelText: 'description'),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/lokasi.jpg', height: 25, width: 25,),
                      SizedBox(width: 5,),
                      Text("Lokasi", style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold
                      ),)
                    ],
                  ),
                  TextField(controller: _locationController, decoration: InputDecoration(labelText: 'location'),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 25,
                        width: 120,
                        child: ElevatedButton(onPressed: (){
                      
                        }, child: Row(
                          children: [
                            Image.asset('assets/gmaps.jpeg', width: 10, height: 15,),
                            SizedBox(width: 10,),
                            Text("Pilih Titik", style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: mutedColor
                            ),)
                          ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            side: BorderSide(width: 1, color: mutedColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Keterangan Lokasi", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(decoration: InputDecoration(labelText: 'detail'),),
                  SizedBox(height: 30,),
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
                      SizedBox(width: 10,),
                      Text("Laporan Rahasia", style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: mutedColor))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: darkColor, width: 1)
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                          ),
                          onPressed: (){},
                          child: Text('Reset', style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,),
                          ),
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 45,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 165,
                        child: Container(
                          child: ElevatedButton(
                          onPressed: _submitReport,
                          child: Text('Buat Laporan', style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                            color: secondaryColor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
        ),
      )
    );
  }
}