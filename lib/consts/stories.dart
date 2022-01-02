import 'package:flutter/material.dart';

Container storiesView() {
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
    child: Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
            height: 70,
            width: 70,
            alignment: Alignment.center,
            margin:const EdgeInsets.symmetric(horizontal: 2),
            decoration:const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(88,81,219,1),
                Color.fromRGBO(131,58,180,1),
                Color.fromRGBO(193,53,132,1),
                Color.fromRGBO(225,48,108,1),
                Color.fromRGBO(253,29,29,1),
                Color.fromRGBO(247,119,55,1),
                Color.fromRGBO(252,175,69,1),
                Color.fromRGBO(255,220,128,1),

              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 63,
              width: 63,
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration:const BoxDecoration(
                  color: Colors.green,
                    shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("imgs/userprofilepic.jpg")
                  )
                ),
              ),
            ),

        ),
          ),
          Text("keshavkeshav", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,overflow: TextOverflow.ellipsis),)
        ],
      ),
    ),
  );
}


Container storiesToView(context){
  return  Container(
    height: 100,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
    child: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        storiesView(),
        storiesView(),
        storiesView(),
        storiesView(),
      ],
    ),
  );
}