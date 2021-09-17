import 'package:flutter/material.dart';

class VideoContentItem extends StatelessWidget {


  String judulVideo;
  String thumbnailVideo;
  String typeVideo;
  String urlVideo;

  VideoContentItem(this.judulVideo,this.thumbnailVideo,this.typeVideo,this.urlVideo);
  // const VideoContentItem({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
      width: double.infinity,
      height: 93.41,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
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
              Text(thumbnailVideo,
                style: TextStyle(fontSize: 14),)
            ],
          )

        ],
      ),
    );
  }
}