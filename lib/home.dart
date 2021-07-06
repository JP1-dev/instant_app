import 'package:flutter/material.dart';
import 'pages/feed.dart';
import 'pages/search.dart';
import 'pages/profile.dart';
import 'pages/post.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [Feed(), Search(), Profile(), Post()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          body: TabBarView(
            children: pages,
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.account_circle_rounded)),
                Tab(icon: Icon(Icons.add_circle_outline_sharp))
              ],
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
              indicatorColor: Colors.grey,
            ),
          ),
        ));
  }
}
