import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/data/model/get_report_model.dart';
import 'package:lapor_mbak_ita/pages/laporanDetail_page.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class ReportWidget extends StatefulWidget {
  final Report report;

  const ReportWidget({super.key, required this.report});

  @override
  State<ReportWidget> createState() => _ReportWidgetState();
}

class _ReportWidgetState extends State<ReportWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Laporan(dreport: widget.report);
        }));
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/profil.png',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "username",
                      style: primaryTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  widget.report.createdAt.toString(),
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                widget.report.description,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                height: 220,
                decoration: BoxDecoration(
                  color: mutedColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.report.image,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icon.png',
                      height: 30,
                      width: 30,
                      color: darkColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2",
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: mutedColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/komen.png',
                      height: 40,
                      width: 40,
                      color: darkColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: darkColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: selesaiColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            Divider(
              color: mutedColor,
              thickness: 1,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
