import 'package:flutter/material.dart';

class AddNewForumPage extends StatelessWidget {
  var obsuced = true;
  var topikInput;
  var forumInput;
  // const AddNewForumPage({Key? key}) : super(key: key);

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
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
                  ),
                  Text("Add New Forum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(132,38),

            ),
            child: Text("Unggah",style: TextStyle(fontSize: 20),)
        ),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              child: TextField(
                // textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (ValueKey) {
                  topikInput = ValueKey;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Topik Pembahasan",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
              child: TextField(
                maxLines: 27,
                // textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (ValueKey) {
                  forumInput = ValueKey;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Input Forum",
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
