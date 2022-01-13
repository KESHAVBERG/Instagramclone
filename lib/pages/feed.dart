import 'package:flutter/material.dart';
import 'package:functionlearner/consts/feedPosts.dart';
import 'package:functionlearner/consts/stories.dart';
import 'package:functionlearner/my_flutter_app_icons.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Image.asset(
            "imgs/icon.png",
            height: 50,
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                MyFlutterApp.plus_squared_alt,
                color: Colors.black,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('imgs/messager icon.jpg'))),
                ))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            shrinkWrap: true,
            children: [
              storiesToView(context),

              postContainer(context, "sr.keshav", "profilepics/p2.jpg", "imgs/userprofilepic.jpg"),
              postContainer(context, "sr.keshav", "profilepics/p2.jpg", "imgs/userprofilepic.jpg"),
              postContainer(context, "sr.keshav", "profilepics/p2.jpg", "imgs/userprofilepic.jpg"),
              postContainer(context, "sr.keshav", "profilepics/p2.jpg", "imgs/userprofilepic.jpg"),



            ],
          ),
        ));
  }
}

