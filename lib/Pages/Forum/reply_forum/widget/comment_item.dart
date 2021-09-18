import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  final int idComment;
  CommentItem(this.idComment);
  // const CommentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl = "assets/images/person.png";
    String isoComment = "ini String komentar";
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/person.png"),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Card(
            margin: EdgeInsets.only(top:10,left: 10,right: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Text("ini komentar"),
            ),
          ),
        ),
      ],
    );
  }
}
