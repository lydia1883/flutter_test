import 'package:flutter/material.dart';
class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:new Scaffold(
        body: new Center(child: new Text("ShopPage"))
      ),
    );
  }
}