import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociable/Pages/Membership/membership.dart';
import 'package:sociable/Pages/konten/detail_kontent.dart';

class VideoContentItem extends StatelessWidget {
  String thumbnailVideo;
  String judulVideo;
  bool typeVideo;

  VideoContentItem({
    this.thumbnailVideo,
    this.judulVideo,
    this.typeVideo: true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailKonten();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 13,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 30,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 92,
              height: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(thumbnailVideo),
                  fit: BoxFit.cover,
                ),
                color: Colors.amber,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                child: Icon(
                  typeVideo ? Icons.lock : Icons.play_circle,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: typeVideo ? Color(0xffFFC803) : Color(0xffF0F0F1),
                    ),
                    child: Text(
                      typeVideo ? "Premium" : 'Basic',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Text(
                    judulVideo,
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
