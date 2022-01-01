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
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:BottomAppBar(
        child: Row(
          children: [
            Icon(Icons.home,color: Colors.black,)
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset("imgs/icon.png",height: 50,),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(MyFlutterApp.plus_squared_alt, color: Colors.black,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(MyFlutterApp.facebook_messenger, color: Colors.black,),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(8,0,0,0),
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
            )
          ],
        ),
      ),
    );
  }
}
