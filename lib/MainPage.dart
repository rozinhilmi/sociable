import 'package:flutter/material.dart';
import 'package:sociable/Pages/Akun/akun.dart';
import 'package:sociable/Pages/Challenges/challangesPage.dart';
import 'Pages/Forum/add_new_forum/add_new_forum.dart';
import 'Pages/Forum/forum.dart';
import 'Pages/konten/konten.dart';




class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
  var page1 = Center(child: ForumPage(),);
  var page2 = Center(child: KontenPage());
  var page3 = Center(child: ChallengesPage());
  var page4 = Center(child: AkunPage(1)); // 1 = id user

  Color page1Style = Colors.blue ;
  Color page2Style = Color.fromRGBO(30, 30, 30, 100) ;
  Color page3Style = Color.fromRGBO(30, 30, 30, 100) ;
  Color page4Style = Color.fromRGBO(30, 30, 30, 100) ;


  var thisPage = Center(child: ForumPage(),);
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    MoveToNavigationBar(String target){

      if(target == "forum"){
        widget.page1Style = Colors.blue;
        widget.page2Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page3Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page4Style = Color.fromRGBO(30, 30, 30, 100);

        widget.thisPage = widget.page1;
      }
      else if(target == "konten"){
        widget.page1Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page2Style = Colors.blue;
        widget.page3Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page4Style = Color.fromRGBO(30, 30, 30, 100);

        widget.thisPage = widget.page2;
      }
      else if(target == "challanges"){
        widget.page1Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page2Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page3Style = Colors.blue;
        widget.page4Style = Color.fromRGBO(30, 30, 30, 100);

        widget.thisPage = widget.page3;
      }
      else if(target == "akun"){
        widget.page1Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page2Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page3Style = Color.fromRGBO(30, 30, 30, 100);
        widget.page4Style = Colors.blue;

        widget.thisPage = widget.page4;
      }

    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AddNewForumPage();
                  }
                )
              );
            },
            child: Container(
                child: Icon(Icons.add_circle_outline,size: 50,color: Colors.blue,),
                width: 150,
                height: 150,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white
                ),
            ),
          ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (){
                    setState(() {
                      MoveToNavigationBar("forum");
                    });

                  },
                  icon: Icon(
                    Icons.forum_rounded,
                    size: 32,
                      color: widget.page1Style,
                  )
              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      MoveToNavigationBar("konten");
                    });

                  },
                  icon: Icon(
                      Icons.video_collection_outlined,
                      size: 32,
                      color: widget.page2Style,
                  )
              ),
              Container(
                width: 15,
                height: 45,

              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      MoveToNavigationBar("challanges");
                    });

                  },
                  icon: Icon(
                      Icons.calendar_today,
                      size: 32,
                      color: widget.page3Style,
                  )
              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      MoveToNavigationBar("akun");
                    });

                  },
                  icon: Icon(
                      Icons.person_pin_rounded,
                      size: 32,
                      color: widget.page4Style,
                  )
              ),
            ],
          ),

        ),
        body: widget.thisPage
      ),
    );
  }
}
