import 'package:flutter/material.dart';
import 'package:flutter_app/codelang/widget/Demo1.dart';

import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: "Flutter Demo",
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home:new Scaffold(
//         body: new Center(child: new Text("HomePage"))
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomePage> {
  //数据源
  List data;
  @override

  void initState() {
    super.initState();
    _pullNet();
  }

  void _pullNet() async {
    await http.get("http://www.wanandroid.com/project/list/1/json?cid=1").then((http.Response response){
      var convertDataToJson = json.decode(response.body);
      print(convertDataToJson);
      convertDataToJson  = convertDataToJson['data']['datas'];
      print(convertDataToJson);
      setState(() {
        data = convertDataToJson;
      });
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new ListView(
          children: data != null ? _getItem() : _loading()
        ),
      ),
    );
  }

  List<Widget> _loading() { 
    return <Widget>[
      new Container(
        height: 300.0,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircularProgressIndicator(strokeWidth: 1.0,),
              new Text("正在加载"),
            ],
          )
        ),
      )
    ];
  }

  List<Widget> _getItem() {
    return data.map((item) {
      return new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: _getRowWidget(item),),
          elevation: 3.0,
          margin: const EdgeInsets.all(10.0),
        );
    }).toList();
  }

  Widget _getRowWidget(item) { 
    return new Row(children: <Widget>[
      new Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: new Stack(children: <Widget>[
          new Column(children: <Widget>[
            new Text("${item["title"]}".trim(),
            style: new TextStyle(color: Colors.black, fontSize: 20.0,),
            textAlign: TextAlign.left),
            new Text("${item["desc"]}", maxLines: 3,),
          ],)
        ],)
      ),
      new ClipRect(child: new FadeInImage.assetNetwork(
        placeholder: "assets/images/shop.png",
        image: "${item['envelopePic']}",
        width: 50.0,
        height: 50.0,
        fit: BoxFit.fitWidth,
      ),),
    ],);
  
  }

  Widget _getItem2() {
    return new Card(child: new Padding(
      padding: const EdgeInsets.all(10.0), child: _getRowWidget2(),),
      elevation: 3.0,
      margin: const EdgeInsets.all(10.0),);
  }

  Widget _getRowWidget2() {
    return new Row(children: <Widget>[
      new Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: new Stack(children: <Widget>[
          new Column(children: <Widget>[
            new Text("title".trim(),
            style: new TextStyle(color: Colors.black, fontSize: 20.0,),
            textAlign: TextAlign.left),
            new Text("desc", maxLines: 3,),
          ],)
        ],)
      ),
      new ClipRect(child: new FadeInImage.assetNetwork(
        placeholder: "assets/images/shop.png",
        image: "assets/images/shop.png",
        width: 50.0,
        height: 50.0,
        fit: BoxFit.fitWidth,
      ),),
    ],);
  }
  _pushPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context){
      return new Demo1();
    },));
  }
}