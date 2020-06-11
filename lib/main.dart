import 'package:flutter/material.dart';
import 'screens/home/home.dart';
void main() => runApp(ToDo());

class ToDo extends StatelessWidget {
  final controller = PageController(
    initialPage: 2,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageView(
          controller: controller,
          children: <Widget>[Home()],
        ));
  }
}
