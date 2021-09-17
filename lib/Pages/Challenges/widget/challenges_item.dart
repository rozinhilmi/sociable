import 'package:flutter/material.dart';
import 'package:sociable/Pages/Challenges/detail_challenges/detailChallanges.dart';

class ChallengesItem extends StatelessWidget {
  final int idChallenges;
  final String titleChallenges;
  final bool isDone;

  ChallengesItem(this.idChallenges,this.titleChallenges,this.isDone);
  // const ChallengesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          primary: Colors.white,
          onPrimary: Colors.grey
        ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return DetailChallanges(idChallenges, titleChallenges, isDone);
          }));
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit:FlexFit.tight,
                child: Container(
                  color: Colors.white,
                  child: Text("haloo ini challenges",style: TextStyle(color: Colors.black),),
                ),
              ),
              if(isDone == true)  Icon(Icons.check_circle,size: 50,color: Colors.green,)
              else
                Icon(Icons.circle_outlined,size: 50,color: Colors.green,)
            ],
          ),
        )
    );
  }
}
