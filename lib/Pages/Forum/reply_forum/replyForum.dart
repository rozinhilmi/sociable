import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociable/Pages/Forum/reply_forum/widget/comment_item.dart';

class ReplyForumPage extends StatefulWidget {
  final int idForum;
  ReplyForumPage(this.idForum);

  @override
  _ReplyForumPageState createState() => _ReplyForumPageState();
}

class _ReplyForumPageState extends State<ReplyForumPage> {
  @override
  Widget build(BuildContext context) {
    final String value = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error doloribus ullam rem maxime, voluptates placeat ipsum aperiam. Veritatis labore maxime, minima, consequatur tempora animi nobis praesentium temporibus a tenetur sapiente sunt cum? Tempora, voluptatem veritatis voluptatibus officiis eos consectetur soluta culpa, consequuntur quos nobis ut quas. Deleniti a dolor inventore pariatur, nemo corrupti quo molestias quam iure fuga porro odit at laborum officiis praesentium, necessitatibus, corporis labore asperiores sapiente? Nam distinctio ab ex impedit, aperiam vero voluptate in, vel modi molestias magni incidunt consectetur delectus porro, et pariatur doloribus recusandae! Saepe vel perspiciatis voluptatem. Id dicta optio ex quis ullam corrupti? Repellat magni atque possimus itaque assumenda consequatur excepturi voluptates nemo ea totam laudantium iste distinctio, voluptas incidunt, rerum illo?";
    int jumlahLike = 12;
    String waktuPost = "10 menit yang lalu";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
              ),
              Text("Forum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Card(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Budi Hartono",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 245, 245, 1)
                          ),
                          child: Text("Bully",style: TextStyle(color: Colors.blue),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(value),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white
                                ),
                                onPressed: (){
                                  setState(() {
                                    jumlahLike += 1;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.thumb_up,color: Colors.black,),
                                    Text(jumlahLike.toString(),style: TextStyle(color: Colors.black),)
                                  ],
                                )
                            ),
                            SizedBox(width:5),

                          ],
                        ),

                        Text(waktuPost)
                      ],
                    )
                  ],
                ),

              ),
            ),
            SizedBox(height: 18,),



            for(int i=0; i<20; i++)
              CommentItem(  20 )// id item)
          ],
        ),
      ),
    );
  }
}
