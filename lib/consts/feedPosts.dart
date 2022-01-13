import 'package:flutter/material.dart';


Container postContainer(context, String userName, String imgloaction, String profilePic){
  return
    Container(
      height: 370,
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeedPostHeader(context, userName,profilePic),
          imageholder(imgloaction),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height:50,
            // color: Colors.lightBlue,
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 3,),
                Container(
                  height: 25,
                  width: 25,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('imgs/comment.png')
                    )
                  ),
                ),
                SizedBox(width: 3,),

                Container(
                  height: 20,
                  width: 20,
                  decoration:const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('imgs/send.png')
                      )
                  ),
                ),
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
            child: Text("7 minutes ago", style: TextStyle(fontSize: 11),),
          )

        ],
      ),
    );
}


Container FeedPostHeader(context, String userName,String profilePic){
  return  Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
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
                image:  AssetImage(profilePic)
              )
            ),
          ),
          SizedBox(width: 8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName, style:const TextStyle(
                  fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'
              ),),
            ],
          ),
          new Spacer(), // I just added one line

          Icon(Icons.more_vert_sharp)
        ],
      )
  );
}

Container imageholder(String imglocation){
  return Container(
    height: 250,
    decoration: BoxDecoration(
        color: Colors.black,

        image: DecorationImage(
            fit: BoxFit.cover,

            image: AssetImage(imglocation),
        )
    ),
  );
}

