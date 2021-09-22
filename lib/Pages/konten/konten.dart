import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        appBar: AppBar(
            backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Konten",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),

              
            ],
          ),

          ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 137.78,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 294.24,
                        height: 137.78,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(image: AssetImage("assets/images/konten/konten_slide1.jpeg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)
                        ),

                        child: Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(100, 100, 100, 99)
                            ),
                            child: Center(child: Text("Temukan Teman Baru",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 25),)),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 294.24,
                        height: 137.78,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(image: AssetImage("assets/images/konten/konten_slide2.jpeg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)
                        ),
                          child: Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(100, 100, 100, 99)
                              ),
                              child: Center(child: Text("Temukan Pengalaman Baru",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 25),)),
                            ),
                          )
                      ),
                    ],

                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    VideoContentItem("url_thumbnail_video","5 tips berkenalan dengan orang baru","Premium","url_video"),
                    VideoContentItem("url_thumbnail_video","tips agar tidak baperan","Basic","url_video"),
                    VideoContentItem("url_thumbnail_video","tips hidup sehat","Premium","url_video"),
                    VideoContentItem("url_thumbnail_video","tetap positive thinking","Basic","url_video"),
                    VideoContentItem("url_thumbnail_video","cara menaham emosi","Premium","url_video"),
                    VideoContentItem("url_thumbnail_video","cara bersikap dewasa","Basic","url_video"),
                    VideoContentItem("url_thumbnail_video","gatau apalagi","Premium","url_video"),
                  ],
                )



              ],
            )
          ],
        ),
      ),
    );
  }
}













