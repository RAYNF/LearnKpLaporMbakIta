import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/api/api_service.dart';
import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/beranda_page.dart';
import 'package:lapor_mbak_ita/pages/buatBerita_page.dart';
import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
import 'package:lapor_mbak_ita/pages/profile_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:lapor_mbak_ita/widget/news_widget.dart';

class Berita extends StatefulWidget {
  final User dataUser;

  const Berita({super.key, required this.dataUser});

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  late Future<GetNewsModel> _getNews;
  late GetNewsModel getNewsModel;

  @override
  void initState() {
    super.initState();
    _getNews = ApiService().getNewsAll();
    _getNews.then((value) {
      setState(() {
        getNewsModel = value;
        print("News fetched successfully: ${getNewsModel.news.length} items"); // Debug print
      });
    }).catchError((error) {
      print("Error fetching news: $error"); // Debug print
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
                      child: FutureBuilder<GetNewsModel>(
                        future: _getNews,
                        builder:
                            (context, AsyncSnapshot<GetNewsModel> snapshot) {
                          var state = snapshot.connectionState;
                          if (state != ConnectionState.done) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemCount: snapshot.data?.news.length,
                                itemBuilder: (context, index) {
                                  var news = snapshot.data!.news[index];
                                  return NewsWidget(news: news, dataUser: widget.dataUser,);
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
              // ),
            ),
           
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => BuatBerita(
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
            top: BorderSide(color: mutedColor, width: 1.0), // Menambahkan border hanya pada bagian atas
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda(dataUser: widget.dataUser,))));
                },),
              label: 'Laporan',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.newspaper), color: darkColor,onPressed: () {
                
              },),
              label: 'Berita',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.call), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => CallCenter(dataUser: widget.dataUser,))));
              },),
              label: 'Call Center',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.person), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile(dataUser: widget.dataUser,))));
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             SliverAppBar(
//               floating: true,
//               pinned: true,
//               snap: true,
//               backgroundColor: primaryColor,
//               toolbarHeight: 75,
//               actions: [
//                 Container(
//                   height: 65,
//                   width: 75,
//                   padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//                   child: Image.asset('assets/Logo.png', fit: BoxFit.fill),
//                 ),
//               ],
//             )
//           ];
//         },
//         body: Center(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Container(
//               width: MediaQuery.of(context).size.width - 2 * defaultMargin,
//               height: MediaQuery.of(context).size.height,
//               child: Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: double.infinity,
//                     child: FutureBuilder<GetNewsModel>(
//                       future: _getNews,
//                       builder: (context, AsyncSnapshot<GetNewsModel> snapshot) {
//                         var state = snapshot.connectionState;
//                         if (state != ConnectionState.done) {
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         } else {
//                           if (snapshot.hasData) {
//                             return ListView.builder(
//                               itemCount: snapshot.data?.news.length ?? 0,
//                               itemBuilder: (context, index) {
//                                 var news = snapshot.data!.news[index];
//                                 return NewsWidget(
//                                   news: news,
//                                   dataUser: widget.dataUser,
//                                 );
//                               },
//                             );
//                           } else if (snapshot.hasError) {
//                             return Center(
//                               child: Material(
//                                 child: Text("Error: ${snapshot.error}"),
//                               ),
//                             );
//                           } else {
//                             return const Material(
//                               child: Text("No news available"),
//                             );
//                           }
//                         }
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => BuatBerita(dataUser: widget.dataUser),
//             ),
//           );
//         },
//         child: Icon(
//           Icons.add,
//           color: secondaryColor,
//         ),
//         backgroundColor: primaryColor,
//         shape: CircleBorder(),
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           border: Border(
//             top: BorderSide(color: mutedColor, width: 1.0),
//           ),
//         ),
//         child: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: IconButton(
//                 icon: Icon(Icons.home),
//                 color: darkColor,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Beranda(dataUser: widget.dataUser)),
//                   );
//                 },
//               ),
//               label: 'Laporan',
//             ),
//             BottomNavigationBarItem(
//               icon: IconButton(
//                 icon: Icon(Icons.newspaper),
//                 color: darkColor,
//                 onPressed: () {
//                   // Current page, do nothing
//                 },
//               ),
//               label: 'Berita',
//             ),
//             BottomNavigationBarItem(
//               icon: IconButton(
//                 icon: Icon(Icons.call),
//                 color: darkColor,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => CallCenter(dataUser: widget.dataUser)),
//                   );
//                 },
//               ),
//               label: 'Call Center',
//             ),
//             BottomNavigationBarItem(
//               icon: IconButton(
//                 icon: Icon(Icons.person),
//                 color: darkColor,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Profile(dataUser: widget.dataUser)),
//                   );
//                 },
//               ),
//               label: 'Profile',
//             ),
//           ],
//           selectedItemColor: mutedColor,
//           backgroundColor: secondaryColor,
//           elevation: 0,
//           type: BottomNavigationBarType.fixed,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:lapor_mbak_ita/data/api/api_service.dart';
// import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
// import 'package:lapor_mbak_ita/data/model/get_report_model.dart';
// import 'package:lapor_mbak_ita/data/model/login_model.dart';
// import 'package:lapor_mbak_ita/pages/beranda_page.dart';
// import 'package:lapor_mbak_ita/pages/beritaDetail_page.dart';
// import 'package:lapor_mbak_ita/pages/buatBerita_page.dart';
// import 'package:lapor_mbak_ita/pages/callCenter_page.dart';
// import 'package:lapor_mbak_ita/pages/profile_page.dart';
// import 'package:lapor_mbak_ita/shared/theme_shared.dart';
// import 'package:lapor_mbak_ita/widget/news_widget.dart';

// class Berita extends StatefulWidget {
//   final User dataUser;

//   const Berita({super.key, required this.dataUser});

//   @override
//   _BeritaState createState() => _BeritaState();
// }

// class _BeritaState extends State<Berita> {
  
//   late Future<GetNewsModel> _getNews;
//   late GetNewsModel getNewsModel;

//   @override
//   void initState() {
//     super.initState();
//     _getNews = ApiService().getNewsAll();
//     _getNews.then((value) {
//       getNewsModel = value;
//       setState(() {});
//     });
//   }

  