import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/pages/profile_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class DaftarLaporan extends StatelessWidget {
  final User dataUser;

  const DaftarLaporan({super.key, required this.dataUser});

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
                  //error
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile(dataUser: dataUser,))));
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
            child: GestureDetector(
              onTap: () {
                
              },
              child: Padding(padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ) 
        ),
      ),
    );
  }
}