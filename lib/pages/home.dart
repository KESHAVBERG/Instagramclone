import 'package:flutter/material.dart';
import 'package:functionlearner/pages/activity.dart';
import 'package:functionlearner/pages/feed.dart';
import 'package:functionlearner/pages/profile.dart';
import 'package:functionlearner/pages/reels.dart';
import 'package:functionlearner/pages/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  List<Widget> screens = <Widget>[
    Feed(),
    Search(),
    Reels(),
    Activity(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor:currentindex == 2? Colors.black:Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          selectedIconTheme: IconThemeData(color: Colors.black),
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: currentindex != 0? Icon(Icons.home_outlined,color:currentindex == 2? Colors.white:Colors.black,):Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        currentindex = 0;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: Icon(Icons.search, color:currentindex == 2? Colors.white: Colors.black,),
                    onPressed: () {
                      setState(() {
                        currentindex = 1;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon:currentindex == 2? Image.asset("imgs/ricon.png"): Image.asset("imgs/reelsiconpng.png"),
                    onPressed: () {
                      setState(() {
                        currentindex = 2;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: currentindex == 3
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border, color:currentindex == 2? Colors.white: Colors.black,),
                    onPressed: () {
                      setState(() {
                        currentindex = 3;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      currentindex = 4;
                    });
                  },
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        border:currentindex == 4? Border.all(color: Colors.black,width: 2):null,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('imgs/userprofilepic.jpg'))),
                  ),
                ),
                label: ''),
          ],
        ),
      ),
      body: screens.elementAt(currentindex),
    );
  }
}
