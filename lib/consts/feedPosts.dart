import 'package:flutter/material.dart';


Container postContainer(context){
  return
    Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Column(
        children: [
          FeedPostHeader(context)
        ],
      ),
    );
}


Container FeedPostHeader(context){
  return  Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
            decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image:  AssetImage("imgs/userprofilepic.jpg")
              )
            ),
          ),
          SizedBox(width: 8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("UserName", style: TextStyle(
                  fontWeight: FontWeight.w700
              ),),
              Text("Location")
            ],
          ),
          new Spacer(), // I just added one line

          Icon(Icons.more_vert_sharp)
        ],
      )
  );
}