
import 'package:flutter/material.dart';
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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imgs/reelsiconpng.png"))),
              ),
              const Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 30,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("imgs/userprofilepic.jpg"))),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          "imgs/icon.png",
          height: 50,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: Icon(
              MyFlutterApp.plus_squared_alt,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              MyFlutterApp.facebook_messenger,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              storiesToView(context),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
              ),
            ],
          ),

      )
    );
  }
}
