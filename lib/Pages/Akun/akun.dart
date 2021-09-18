import 'package:flutter/material.dart';
import 'package:sociable/Pages/Akun/notif/notifPage.dart';
import 'package:sociable/Pages/Forum/widget/forum_item.dart';

class AkunPage extends StatelessWidget {
  final int idUser;
  AkunPage(this.idUser);
  // const AkunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Budi Hartono";
    String levelDiagnosa = "SAD Ringan";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          shadowColor: Color.fromRGBO(255, 255, 255, 0),
          backgroundColor: Color.fromRGBO(118, 171, 255, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Profil",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),

              IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return NotifPage();
                    }));
                  },
                  icon: Icon(Icons.notifications_sharp,color: Colors.black,size: 30,)
              )
            ],
          ),
        ),

        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Color.fromRGBO(118, 171, 255, 1),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                      image: DecorationImage(image: AssetImage("assets/images/avatar.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,style: TextStyle(color: Colors.black,fontSize: 25)),
                      SizedBox(width: 5,),
                      Icon(Icons.payment)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(23)
                    ),
                    child: Text(levelDiagnosa),
                  )

                ],
              ),
            ),

            ListView(
              children: [
                SizedBox(height: 250,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(30))
                  ),
                  child: Column(
                    children: [
                      for(int i=0;i<10;i++)
                      ForumItem(i, "isiForum", "waktuPosting", "penulis", "forumTopik", i*i*i, i*i, true)
                      // ForumItem(idForum, "isiForum", "waktuPosting", "penulis", "forumTopik", "jumlahLike", "jumlahKomentar", "isLike")

                    ],
                  ),
                )
              ],
            )



          ],
        ),
      ),
    );
  }
}
