import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Items List'),
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, 'dart');
                },
                label: Text('DART'),
                icon: Icon(Icons.wb_cloudy_outlined),
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, 'typescript');
                },
                icon: Icon(Icons.link_rounded),
                label: Text('TYPESCRIPT'),
              ),
            ],
          ),
        )));
  }
}
