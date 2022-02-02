import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Items List'),
        ),
        body: SafeArea(
          child: Container(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('icon/palm.png'),
                  backgroundColor: Colors.transparent,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, 'dart');
                  },
                  label: Text('DART'),
                  icon: Icon(Icons.wb_cloudy_outlined),
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, '/typescript');
                  },
                  icon: Icon(Icons.link_rounded),
                  label: Text('TYPESCRIPT'),
                ),
              ],
            ),
          )),
        ));
  }
}
