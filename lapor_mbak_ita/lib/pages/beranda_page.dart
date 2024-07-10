import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/api/api_service.dart';
import 'package:lapor_mbak_ita/data/model/get_report_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/berita_page.dart';
import 'package:lapor_mbak_ita/pages/buatLaporan_page.dart';
import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
import 'package:lapor_mbak_ita/pages/laporanDetail_page.dart';
import 'package:lapor_mbak_ita/pages/profile_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

//blm ambil report
import 'package:lapor_mbak_ita/data/model/report_model.dart';
import 'package:lapor_mbak_ita/widget/report_widget.dart';

class Beranda extends StatefulWidget {
  final User dataUser;

  const Beranda({super.key, required this.dataUser});

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {

  late Future<GetReportModel> _getReport;
  late GetReportModel getReportModel;

  String _order = 'latest';
  String _status = 'all';

  @override
  void initState() {
    super.initState();
    _fetchReports();
  }

  void _fetchReports() {
    _getReport = ApiService().getReportAll(_order, _status);
    //_getReport = ApiService().getFilteredReport(_order, _status, null,null);
    _getReport.then((value) {
      getReportModel = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,pinned: true,snap: true,backgroundColor: primaryColor,toolbarHeight: 75,
                actions: [
                  Container(
                    height: 65,width: 75,padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image.asset('assets/Logo.png',fit: BoxFit.fill)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(15),height: 60,width: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: true, context: context, builder: (context) {
                                  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) { return Wrap(
                                      children: [
                                        Container(
                                          color: Colors.transparent,
                                          child: Container(decoration: BoxDecoration(border: Border.all(color: darkColor, width: 3),
                                                color: secondaryColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28))),
                                            child: Container(
                                              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width -2 * defaultMargin,
                                                child: Column(
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: 25,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("Filter",style: primaryTextStyle.copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: darkColor)),
                                                        TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          _order = 'latest';
                                                          _status = 'all';
                                                        });
                                                        initState();
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Reset",
                                                        style: primaryTextStyle.copyWith(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold,
                                                          color: mutedColor,
                                                        ),
                                                      ),
                                                    ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 45),
                                                    Text("Urutkan",style: primaryTextStyle.copyWith(fontSize: 16,fontWeight:FontWeight.bold,color: darkColor)),
                                                    SizedBox(height: 15),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        TextButton(style: ButtonStyle(minimumSize:MaterialStateProperty.all<Size>(Size(90,40)),
                                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(5))),
                                                                backgroundColor: MaterialStateProperty.all<Color>( Colors.grey.shade200),
                                                                side: MaterialStateProperty.all<BorderSide>( BorderSide(color:darkColor,width: 1))),
                                                            onPressed: () {
                                                              setState(() {
                                                              _order = 'latest';
                                                              });
                                                              initState();
                                                              Navigator.pop(context);
                                                            },
                                                            child: Text("Terbaru",style: TextStyle(color:darkColor,fontSize: 14,fontWeight:FontWeight.w600))),
                                                        TextButton(
                                                            style: ButtonStyle(minimumSize:
                                                                    MaterialStateProperty.all<Size>(Size(90,40)),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(5))),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                                                                side: MaterialStateProperty.all<BorderSide>(BorderSide(color:darkColor,width: 1))),
                                                            onPressed: () {
                                                              setState(() {
                                                              _order = 'popular';
                                                              });
                                                              initState();
                                                              Navigator.pop(context);
                                                            },
                                                            child: Text("Terpopuler",style: TextStyle(color:darkColor,fontSize: 14,fontWeight:FontWeight.w600))),
                                                        TextButton(
                                                            style: ButtonStyle(
                                                                minimumSize:
                                                                    MaterialStateProperty.all<Size>(Size(90,40)),
                                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(5))),
                                                                backgroundColor:MaterialStateProperty.all<Color>(Colors.grey.shade200),
                                                                side: MaterialStateProperty.all<BorderSide>(BorderSide(color:darkColor,width: 1))),
                                                            onPressed: () {
                                                              setState(() {
                                                              _order = 'nearest';
                                                              });
                                                              initState();
                                                              Navigator.pop(context);
                                                            },
                                                            child: Text("Terdekat",style: TextStyle(color:darkColor,fontSize: 14,fontWeight:FontWeight.w600)))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 35,
                                                    ),
                                                    Text(
                                                      "Status",
                                                      style: primaryTextStyle
                                                          .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: darkColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        TextButton(
                                                            style: ButtonStyle(
                                                                minimumSize:
                                                                    MaterialStateProperty.all<
                                                                            Size>(
                                                                        Size(
                                                                            90,
                                                                            40)),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        Colors
                                                                            .grey
                                                                            .shade200),
                                                                side: MaterialStateProperty.all<
                                                                    BorderSide>(
                                                                  BorderSide(
                                                                      color:
                                                                          darkColor,
                                                                      width: 1),
                                                                )),
                                                            onPressed: () {},
                                                            child: Text(
                                                              "Verifikasi",
                                                              style: TextStyle(
                                                                  color:
                                                                      darkColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            )),
                                                        TextButton(
                                                            style: ButtonStyle(
                                                                minimumSize:
                                                                    MaterialStateProperty.all<
                                                                            Size>(
                                                                        Size(
                                                                            90,
                                                                            40)),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        Colors
                                                                            .grey
                                                                            .shade200),
                                                                side: MaterialStateProperty.all<
                                                                    BorderSide>(
                                                                  BorderSide(
                                                                      color:
                                                                          darkColor,
                                                                      width: 1),
                                                                )),
                                                            onPressed: () {},
                                                            child: Text(
                                                              "Diproses",
                                                              style: TextStyle(
                                                                  color:
                                                                      darkColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            )),
                                                        TextButton(
                                                            style: ButtonStyle(
                                                                minimumSize:
                                                                    MaterialStateProperty.all<
                                                                            Size>(
                                                                        Size(
                                                                            90,
                                                                            40)),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        Colors
                                                                            .grey
                                                                            .shade200),
                                                                side: MaterialStateProperty.all<
                                                                    BorderSide>(
                                                                  BorderSide(
                                                                      color:
                                                                          darkColor,
                                                                      width: 1),
                                                                )),
                                                            onPressed: () {},
                                                            child: Text(
                                                              "Selesai",
                                                              style: TextStyle(
                                                                  color:
                                                                      darkColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 60,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        TextButton(
                                                            style: ButtonStyle(
                                                                minimumSize:
                                                                    MaterialStateProperty.all<
                                                                            Size>(
                                                                        Size(
                                                                            130,
                                                                            40)),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                  ),
                                                                ),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        Colors
                                                                            .grey
                                                                            .shade100),
                                                                side: MaterialStateProperty.all<
                                                                    BorderSide>(
                                                                  BorderSide(
                                                                      color:
                                                                          mutedColor,
                                                                      width: 1),
                                                                )),
                                                            onPressed: () {
                                                              initState();
                                                              Navigator.pop(context);
                                                            },
                                                            child: Text(
                                                              "Terapkan",
                                                              style: TextStyle(
                                                                  color:
                                                                      mutedColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  });
                                });
                          },
                          child: Text(
                            "Filter",
                            style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: darkColor),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
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

          //report
          body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                   Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: FutureBuilder<GetReportModel>(
                        future: _getReport,
                        builder:
                            (context, AsyncSnapshot<GetReportModel> snapshot) {
                          var state = snapshot.connectionState;
                          if (state != ConnectionState.done) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemCount: snapshot.data?.report.length,
                                itemBuilder: (context, index) {
                                  var report = snapshot.data!.report[index];
                                  return ReportWidget(report: report, dataUser: widget.dataUser,);
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Material(
                                  child: Text(snapshot.error.toString()),
                                ),
                              );
                            } else {
                              return const Material(
                                child: Text(" "),
                              );
                            }
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => BuatLaporan(
                          dataUser: widget.dataUser,
                        ))));
          },
          child: Icon(
            Icons.add,
            color: secondaryColor,
          ),
          backgroundColor: primaryColor,
          shape: CircleBorder(),
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
            child:
                //bottom navigation
                BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.home),
                    color: darkColor,
                    onPressed: () {
                      //Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
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
                          MaterialPageRoute(builder: ((context) => Berita(dataUser: widget.dataUser,))));
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
                              builder: ((context) => CallCenter(dataUser: widget.dataUser,))));
                    },
                  ),
                  label: 'Call Center',
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.person),
                    color: darkColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Profile(
                                    dataUser: widget.dataUser,
                                  ))));
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
