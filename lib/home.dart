import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "bottom1"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "bottom2")
        ],
      ),
    );
  }
}
