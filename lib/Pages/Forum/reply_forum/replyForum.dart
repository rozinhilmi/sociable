import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReplyForumPage extends StatefulWidget {
  final int idForum;
  ReplyForumPage(this.idForum);

  @override
  _ReplyForumPageState createState() => _ReplyForumPageState();
}

class _ReplyForumPageState extends State<ReplyForumPage> {
  @override
  Widget build(BuildContext context) {

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
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top:10,left: 10,right: 10),


                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error doloribus ullam rem maxime, voluptates placeat ipsum aperiam. Veritatis labore maxime, minima, consequatur tempora animi nobis praesentium temporibus a tenetur sapiente sunt cum? Tempora, voluptatem veritatis voluptatibus officiis eos consectetur soluta culpa, consequuntur quos nobis ut quas. Deleniti a dolor inventore pariatur, nemo corrupti quo molestias quam iure fuga porro odit at laborum officiis praesentium, necessitatibus, corporis labore asperiores sapiente? Nam distinctio ab ex impedit, aperiam vero voluptate in, vel modi molestias magni incidunt consectetur delectus porro, et pariatur doloribus recusandae! Saepe vel perspiciatis voluptatem. Id dicta optio ex quis ullam corrupti? Repellat magni atque possimus itaque assumenda consequatur excepturi voluptates nemo ea totam laudantium iste distinctio, voluptas incidunt, rerum illo?"),
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

                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.thumb_up,color: Colors.black,),
                                    Text(12.toString(),style: TextStyle(color: Colors.black),)
                                  ],
                                )
                            ),
                            SizedBox(width:5),

                          ],
                        ),

                        Text("10 menit yang lalu")
                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 18,),



              for(int i=0; i<20; i++)
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.png"),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top:10,left: 10,right: 10),



                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Text("ini komentar "+i.toString()),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
