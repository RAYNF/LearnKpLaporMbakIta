import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
import 'package:lapor_mbak_ita/data/model/login_model.dart';
import 'package:lapor_mbak_ita/data/model/user_model.dart';
import 'package:lapor_mbak_ita/pages/beritaDetail_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class NewsWidget extends StatefulWidget {
  final News news;
  final User dataUser;

  const NewsWidget({
    super.key,
    required this.news,
    required this.dataUser,
  });

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BeritaDetail(
            dreport: widget.news,
            dataUser: widget.dataUser,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                widget.news.description,
                textAlign: TextAlign.justify,
              ),
            ),
            _buildImage(),
            const SizedBox(height: 5),
            _buildFooter(),
            Divider(
              color: mutedColor,
              thickness: 1,
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/profil.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10),
            Text(
              "username",
              style: primaryTextStyle.copyWith(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Text(
          widget.news.createdAt.toString(),
          style: primaryTextStyle.copyWith(
              fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * defaultMargin,
      height: 220,
      decoration: BoxDecoration(
        color: mutedColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          widget.news.image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.error);
          },
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icon.png',
              height: 30,
              width: 30,
              color: darkColor,
            ),
            const SizedBox(width: 5),
            Text(
              "2",
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: mutedColor,
              ),
            ),
            const SizedBox(width: 5),
            Image.asset(
              'assets/komen.png',
              height: 40,
              width: 40,
              color: darkColor,
            ),
            const SizedBox(width: 5),
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
                  fontSize: 12, fontWeight: FontWeight.w500, color: darkColor),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: selesaiColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
// import 'package:lapor_mbak_ita/data/model/get_news_model.dart';
// import 'package:lapor_mbak_ita/data/model/login_model.dart';
// import 'package:lapor_mbak_ita/pages/beritaDetail_page.dart';
// import 'package:lapor_mbak_ita/shared/theme_shared.dart';

// class NewsWidget extends StatefulWidget {
//   final News news;
//   final User dataUser;


//   const NewsWidget({super.key, required this.news, required this.dataUser,});

//   @override
//   State<NewsWidget> createState() => _NewsWidgetState();
// }

// class _NewsWidgetState extends State<NewsWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) {
//           return BeritaDetail(dreport: widget.news, dataUser: widget.dataUser,); // Pastikan nama properti benar
//         }));
//       },
//       child: Container(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Image.asset(
//                       'assets/profil.png',
//                       height: 40,
//                       width: 40,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "username",
//                       style: primaryTextStyle.copyWith(
//                           fontSize: 10, fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//                 Text(
//                   widget.news.createdAt.toString(),
//                   style: primaryTextStyle.copyWith(
//                       fontSize: 12, fontWeight: FontWeight.w500),
//                 )
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.all(15),
//               child: Text(
//                 widget.news.description,
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             Container(
//                 width: MediaQuery.of(context).size.width - 2 * defaultMargin,
//                 height: 220,
//                 decoration: BoxDecoration(
//                   color: mutedColor,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.network(
//                     widget.news.image,
//                     fit: BoxFit.cover,
//                   ),
//                 )),
//             SizedBox(
//               height: 5,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       'assets/icon.png',
//                       height: 30,
//                       width: 30,
//                       color: darkColor,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       "2",
//                       style: primaryTextStyle.copyWith(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: mutedColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Image.asset(
//                       'assets/komen.png',
//                       height: 40,
//                       width: 40,
//                       color: darkColor,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Image.asset(
//                       'assets/share.png',
//                       height: 30,
//                       width: 30,
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 30,
//                   width: 105,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Selesai',
//                       style: primaryTextStyle.copyWith(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                           color: darkColor),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: selesaiColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20))),
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               color: mutedColor,
//               thickness: 1,
//             ),
//             SizedBox(
//               height: 5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
