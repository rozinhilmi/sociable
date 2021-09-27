import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociable/Pages/konten/widget/video_konten.dart';

class KontenPage extends StatefulWidget {
  @override
  _KontenPageState createState() => _KontenPageState();
}

class _KontenPageState extends State<KontenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "KONTEN",
        //         style: TextStyle(color: Colors.black, fontSize: 25),
        //       ),
        //     ],
        //   ),
        // ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 83,
              padding: EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 23,
              ),
              child: Text(
                'konten',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 138,

              // color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      width: 295,
                      height: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/konten/konten_slide1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(100, 100, 100, 99),
                        ),
                        child: Text(
                          'Temukan \nteman baru!',
                          style: GoogleFonts.poppins().copyWith(
                            color: Color(0xffF7F7F7),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 295,
                      height: 138,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/konten/konten_slide2.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(100, 100, 100, 99),
                        ),
                        child: Text(
                          'Temukan \npengalaman baru!',
                          style: GoogleFonts.poppins().copyWith(
                            color: Color(0xffF7F7F7),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(right: 10),
                    //   width: 294.24,
                    //   height: 137.78,
                    //   decoration: BoxDecoration(
                    //       color: Colors.green,
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //               "assets/images/konten/konten_slide1.jpeg"),
                    //           fit: BoxFit.cover),
                    //       borderRadius: BorderRadius.circular(15)),
                    //   child: Flexible(
                    //     fit: FlexFit.tight,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(15),
                    //           color: Color.fromRGBO(100, 100, 100, 99)),
                    //       child: Center(
                    //           child: Text(
                    //         "Temukan Teman Baru",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(color: Colors.white, fontSize: 25),
                    //       )),
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   margin: EdgeInsets.only(right: 10),
                    //   width: 294.24,
                    //   height: 137.78,
                    //   decoration: BoxDecoration(
                    //       color: Colors.green,
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //               "assets/images/konten/konten_slide2.jpeg"),
                    //           fit: BoxFit.cover),
                    //       borderRadius: BorderRadius.circular(15)),
                    //   child: Flexible(
                    //     fit: FlexFit.tight,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(15),
                    //           color: Color.fromRGBO(100, 100, 100, 99)),
                    //       child: Center(
                    //           child: Text(
                    //         "Temukan Pengalaman Baru",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(color: Colors.white, fontSize: 25),
                    //       )),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(
            //     horizontal: 35,
            //   ),
            //   padding: EdgeInsets.symmetric(
            //     vertical: 12,
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12),
            //     color: Colors.green,
            //   ),
            //   child: ListTile(
            //     leading: ClipRRect(
            //       borderRadius: BorderRadius.circular(12),
            //       child: Image.asset(
            //         "assets/images/thumbnail_1.jpeg",
            //         height: 67,
            //         width: 92,
            //       ),
            //     ),
            //     title: Text('ListTile with red background'),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 35,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                // color: Colors.green,
              ),
              child: Column(
                children: [
                  VideoContentItem(
                    thumbnailVideo: "assets/images/konten_slide1.jpeg",
                    judulVideo: "tips agar tidak baperan",
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  VideoContentItem(
                    thumbnailVideo: "assets/images/konten_slide2.jpeg",
                    judulVideo: "tips hidup sehat",
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  VideoContentItem(
                    thumbnailVideo: "assets/images/konten_slide1.jpeg",
                    judulVideo: "cara menaham emosi",
                    typeVideo: false,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  VideoContentItem(
                    thumbnailVideo: "assets/images/konten_slide2.jpeg",
                    judulVideo: "cara bersikap dewasa",
                    typeVideo: false,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  VideoContentItem(
                    thumbnailVideo: "assets/images/konten_slide2.jpeg",
                    judulVideo: "5 tips berkenalan dengan orang baru",
                    typeVideo: false,
                  ),
                  SizedBox(
                    height: 13,
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
