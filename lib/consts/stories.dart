import 'package:flutter/material.dart';

Container storiesView(String imgPath) {
  return Container(
    width: 80,
    margin: EdgeInsets.symmetric(horizontal: 1),
    // child: Container(
    //   height: 100,
    //   width: 100,
    //   alignment: Alignment.center,
    //   margin:const EdgeInsets.symmetric(horizontal: 2),
    //   decoration: BoxDecoration(
    //     gradient:const LinearGradient(colors: [
    //       Color.fromRGBO(88,81,219,1),
    //       Color.fromRGBO(131,58,180,1),
    //       Color.fromRGBO(193,53,132,1),
    //       Color.fromRGBO(225,48,108,1),
    //       Color.fromRGBO(253,29,29,1),
    //       Color.fromRGBO(247,119,55,1),
    //       Color.fromRGBO(252,175,69,1),
    //       Color.fromRGBO(255,220,128,1),
    //
    //     ]),
    //     borderRadius: BorderRadius.circular(100),
    //   ),
    //   child: Container(
    //     height: 93,
    //     width: 93,
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(100),
    //     ),
    //     child: Container(
    //       height: 85,
    //       width: 85,
    //       decoration: BoxDecoration(
    //         color: Colors.green,
    //         borderRadius: BorderRadius.circular(100),
    //         image: DecorationImage(
    //           image: AssetImage("imgs/userprofilepic.jpg")
    //         )
    //       ),
    //     ),
    //   ),
    //
    // ),
      child: Column(
        children: [
          Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          margin:const EdgeInsets.symmetric(horizontal: 2),
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors: [
              // Color.fromRGBO(88,81,219,1),
              // Color.fromRGBO(131,58,180,1),
              Color.fromRGBO(247,119,55,1),
              Color.fromRGBO(252,175,69,1),
              Color.fromRGBO(255,220,128,1),
              Color.fromRGBO(253,29,29,1),

              Color.fromRGBO(193,53,132,1),
              Color.fromRGBO(225,48,108,1),


            ]),
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 65,
            width: 65,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 60,
              width: 60,
              decoration:BoxDecoration(
                color: Colors.green,
                  shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgPath)
                )
              ),
            ),
          ),

        ),
          const Text("UserName", overflow: TextOverflow.ellipsis,style: TextStyle(
            fontWeight: FontWeight.w400
          ),)
        ],
      ),

  );
}


Widget storiesToView(context){
  return  Container(
    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
    width: double.infinity,
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        storiesView("imgs/userprofilepic.jpg"),
        storiesView("profilepics/p1.jpg"),
        storiesView("profilepics/p2.jpg"),
        storiesView("profilepics/p3.jpg"),
        storiesView("profilepics/p1.jpg"),
        storiesView("profilepics/p2.jpg"),



      ],
    ),
  );
}