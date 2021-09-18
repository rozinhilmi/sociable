import 'package:flutter/material.dart';

class VideoContentItem extends StatelessWidget {

  String thumbnailVideo;
  String judulVideo;
  String typeVideo;
  String urlVideo;

  VideoContentItem(this.thumbnailVideo,this.judulVideo,this.typeVideo,this.urlVideo);
  // const VideoContentItem({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Container(
        width: double.infinity,
        height: 93.41,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 92.22,
              height: 67.72,

              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: AssetImage("assets/images/konten/konten_slide2.jpeg",),fit: BoxFit.cover)
              ),
              child: Flexible(
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(225, 225,225, 99)
                  ),
                  child: Center(child: Center(child: Icon(Icons.slow_motion_video_outlined),),
                ),
              )
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 43,height: 15,
                  decoration:BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(28)
                  ),
                  child: Center(child: Text(typeVideo,style: TextStyle(fontSize: 12),),),
                ),
                SizedBox(height: 10,),
                Text(judulVideo,
                  style: TextStyle(fontSize: 14),)
              ],
            )

          ],
        ),
      ),
    );
  }
}