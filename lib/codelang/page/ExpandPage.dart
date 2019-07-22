import 'package:flutter/material.dart';
import 'package:flutter_app/codelang/page/FlexLayoutPage.dart';
import 'package:flutter_app/codelang/navigator/page_route.dart';

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // void _pushName () {
    //   Navigator.of(context).pushNamed("/flexBox");
    // }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ExpandPage"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  //顶部对齐
          mainAxisSize: MainAxisSize.max,  //最大宽度
          children: <Widget>[
            FlexLayoutPage()
          ],
        )
      )
    );
  }
}