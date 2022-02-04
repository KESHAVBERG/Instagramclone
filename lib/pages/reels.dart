import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    PageController controller =PageController(initialPage: 0);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: controller ,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                      IconButton(onPressed: (){}, icon: Image.asset("imgs/comment.png")),
                      IconButton(onPressed: (){}, icon: Image.asset("imgs/send.png", width: 25,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),



                    ],
                  )
                ],
              )
            ],
          )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: Center(child: Text('page 2'),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellow,
              child: Center(child: Text('page 3'),),
            ),
          ],
        )
      ),
    );
  }
}
