
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociable/Pages/Challenges/widget/challenges_item.dart';

class ChallengesPage extends StatelessWidget {
  List<Tab> myTab = [
    for(int i=0;i<5;i++)
    Tab(
      child: Flexible(
          fit: FlexFit.tight, 
          child: Container(
            width: double.infinity,
            height: 40,color: Colors.amber,
            padding: EdgeInsets.all(0),
            child: Center(child: Text(i.toString(),textAlign: TextAlign.center,)),
          
          )
      )
    ),
  ];
  // const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          initialIndex: 1,
          length: myTab.length,
          child:Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(108, 185, 255, 100),
              title: Text("Challenges",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(270),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/images/challenges.png",height: 200,),
                              Container(
                                // margin: EdgeInsets.only(top: 50),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 50),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Hai User",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                    Text("Lakukanlah challanges tiap harinya untuk meningkatkan kemampuan bersosialmu",style: TextStyle(fontSize: 18,))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                        indicator : BoxDecoration(
                            color: Colors.white30

                        ),
                        tabs: myTab
                    )
                  ],
                ),
              ),
            ),


            body: TabBarView(children: [
              for(int i=0; i<myTab.length;i++)
                Center(child: ListView(
                  children: [
                    //id chalanges,title,isdone
                    ChallengesItem(1,"title challanges", true),
                    ChallengesItem(1,"title challanges", false),
                    ChallengesItem(1,"title challanges", true),
                    ChallengesItem(1,"title challanges", false),

                    ChallengesItem(1,"title challanges", true),
                    ChallengesItem(1,"title challanges", false),
                    ChallengesItem(1,"title challanges", true),
                    ChallengesItem(1,"title challanges", false),

                  ],
                ),
                ),
              ],
            ),
          ),
    ));
  }
}
