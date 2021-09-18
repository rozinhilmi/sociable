import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'hasilDiagnosa2.dart';

class HasilDiagnosaPertama extends StatelessWidget {
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
        body: Column(
          children: [
            SizedBox(height: 10,),
            Text("Social Anxiety Disorder",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            Image.asset("assets/images/vector1.png",width: double.infinity,),
            Flexible(
                fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(119,192, 249, 0.9),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50),)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 58,left: 35,right: 35),
                        child: Column(
                          children: [
                            HasilTes("Rasa Takut",75),
                            HasilTes("Rasa Cemas",30),
                            HasilTes("Gerogi",90),
                            HasilTes("Baperan",50),

                            Builder(
                              builder: (context) => Container(
                                width: 155,
                                height: 45,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(53),

                                ),
                                child: FlatButton(
                                  child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.black),),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) {
                                      return HasilDiagnosaKedua();
                                    }));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        )
      ),
    );
  }
}

class HasilTes extends StatelessWidget {
  final String jenis_value;
  dynamic result_value;
  HasilTes(this.jenis_value,this.result_value);

  @override
  Widget build(BuildContext context) {
    final dynamic result_value_width = MediaQuery.of(context).size.width -70 ;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(jenis_value,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            Text(result_value.toString()+"%",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
          ],
        ),

        SizedBox(height: 7,),
        Container(
          width: double.infinity,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(71)
          ),
          child: Row(
            children: [
              Container(
                width: result_value_width * (result_value/100),
                height: 10,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 162, 234, 1),
                  borderRadius: BorderRadius.circular(71)
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
