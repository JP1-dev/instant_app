import 'package:flutter/material.dart';
import 'pages/feed.dart';
import 'pages/search.dart';
import 'pages/profile.dart';
import 'pages/post.dart';
import 'pages/direct.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [Profile(), Feed(), Direct()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          body: TabBarView(
            children: pages,
          ),
          bottomNavigationBar: Container(
            height: 70,
            margin: EdgeInsets.only(bottom: 0),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle_rounded, size: 30,)),
                Tab(icon: Icon(Icons.circle, size: 25,)),
                Tab(icon: Icon(Icons.chat_bubble_outline_outlined, size: 25,))
              ],
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
              indicatorColor: Colors.grey,
            ),
          ),
        ));
  }
}
