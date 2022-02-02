import 'package:flutter/material.dart';
import '../screens/ItemDetail.dart';
import '../screens/ItemsList.dart';

// root widget
class App extends StatelessWidget {
  // App theme
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            // initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Start 002',
      theme: new ThemeData(
          primarySwatch: Colors.indigo,
          primaryTextTheme:
              TextTheme(headline1: TextStyle(color: Colors.white))),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) {
              return ItemsList();
            },
          );
        } else {
          return MaterialPageRoute(
            builder: (context) {
              final item = settings.name;

              return ItemDetail(item: item);
            },
          );
        }
      },
    );
  }
}
