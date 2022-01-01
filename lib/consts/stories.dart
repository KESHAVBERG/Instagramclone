import 'package:flutter/material.dart';

Container storiesView() {
  return Container(
    height: 100,
    width: 100,
    alignment: Alignment.center,
    margin:const EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
      gradient:const LinearGradient(colors: [
        Color.fromRGBO(88,81,219,1),
        Color.fromRGBO(131,58,180,1),
        Color.fromRGBO(193,53,132,1),
        Color.fromRGBO(225,48,108,1),
        Color.fromRGBO(253,29,29,1),
        Color.fromRGBO(247,119,55,1),
        Color.fromRGBO(252,175,69,1),
        Color.fromRGBO(255,220,128,1),

      ]),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Container(
      height: 93,
      width: 93,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage("imgs/userprofilepic.jpg")
          )
        ),
      ),
    ),
  );
}
