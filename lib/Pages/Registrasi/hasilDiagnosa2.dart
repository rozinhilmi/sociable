import 'package:flutter/material.dart';
import 'package:sociable/Pages/Forum/forum.dart';

import '../../MainPage.dart';

class HasilDiagnosaKedua extends StatelessWidget {
  // const HasilDiagnosaDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Icon(Icons.arrow_back,color: Colors.black)
              ),
              Center(child: Text("Hasil Diagnosa",style: TextStyle(fontSize: 20,color: Colors.black),)),
              Container(width: 24,)
            ],
          ),
        ),

        body: Stack(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/joinAs.png",height: 350,),

                Container(
                  margin: EdgeInsets.only(left: 200,top: 80),
                  child: Column(
                    children: [
                      Text("Hai User",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Berdasarkan Hasil diagnosa kami,kamu termasukorang yang mengidap SAD loh.",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),


                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.only(top: 220),
                    padding: EdgeInsets.only(right: 5,left: 5,top: 20),
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(119,192, 249, 0.9),
                        // color:Colors.blue;
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50),)
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Tenang Sociable Akan Membantumu",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

                        ),
                        SizedBox(height: 28,),
                        Text("Melalui fitur-fitur yang tersedia, kami yakin dapat menjauhkanmu dari penyakit Social Anxiety Disorder",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),

                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Builder(
                              builder: (context) => Container(
                                width: 120,
                                height: 202,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("assets/images/chalange.png"),fit: BoxFit.cover),

                                ),
                                child: FlatButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("challanges",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                                      SizedBox(height: 20,)
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(builder: (context) {
                                      return MainPage();
                                    }));
                                  },
                                ),
                              ),
                            ),

                            Builder(
                              builder: (context) => Container(
                                width: 120,
                                height: 202,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("assets/images/forum.png"),fit: BoxFit.cover),

                                ),
                                child: FlatButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Forum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                                      SizedBox(height: 20,)
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) {
                                      return MainPage();
                                    }));
                                  },
                                ),
                              ),
                            ),

                            Builder(
                              builder: (context) => Container(
                                width: 120,
                                height: 202,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("assets/images/konten.png"),fit: BoxFit.cover),

                                ),
                                child: FlatButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Konten",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                                      SizedBox(height: 20,)
                                    ],
                                  ),
                                  onPressed: (){},
                                  // onPressed: () {
                                  //   Navigator.of(context)
                                  //       .push(MaterialPageRoute(builder: (context) {
                                  //     return KontenPage("video");
                                  //   }));
                                  // },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Builder(
                          builder: (context) => Container(
                            width: 155,
                            height: 45,
                            margin: EdgeInsets.only(top: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(53),

                            ),
                            child: FlatButton(
                              child: Text("Join Program",style: TextStyle(fontSize: 20,color: Colors.black),),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MainPage();
                                }));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
