import 'package:flutter/material.dart';
import 'package:sociable/Pages/Forum/searchLayout.dart';
import 'component/forum_item.dart';
import 'model/forum_model.dart';





class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  List <Forum_Item_Model> forumItem = List.generate(10, (index) => Forum_Item_Model(
      index,
      "Aku seorang pelajar umur 17 tahun. Saat ini aku sedang menduduki bangku SMA. Aku dikucilkan oleh teman - temanku hanya .......",
      "10 menit yang lalu",
      "Budi Hartono",
      "Bully",
      12,
      13,
      false,
      Colors.black
    )
  );

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
              Text("Forum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),


              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return SearchLayout();
                      }));
                    },
                    icon: Icon(Icons.search,size: 30,),color: Colors.black,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_rounded,size: 30,),color: Colors.black,),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.message,color: Colors.black,size: 30,)
                  ),
                ],
              )
            ],
          ),
        ),


        body: Padding(
          padding: EdgeInsets.only(left: 5,right: 5),
          child: ListView(
            children: [

              for(int i = 0; i<forumItem.length; i++)
                ForumItem(
                  forumItem[i].idForum,
                  forumItem[i].isiForum,
                  forumItem[i].waktuPosting,
                  forumItem[i].penulis,
                  forumItem[i].forumTopik,
                  forumItem[i].jumlahLike,
                  forumItem[i].jumlahKomentar,
                  forumItem[i].isLike,
                )

            ],
          ),
        ),
      ),
    );

  }
}