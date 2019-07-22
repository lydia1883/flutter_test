import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  @override
  MsgState createState() => new MsgState();
}

class MsgState extends State<MsgPage> { 
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String password = '';
  String name = '';
  @override
  void initState() {
    super.initState();
    _unameController = TextEditingController();
    _unameController.addListener(() {
      setState(() {
        print(_unameController.text);
        name = _unameController.text;
      });
    });
    _passwordController = TextEditingController();
    _passwordController.addListener(() {
      setState(() {
        print(_passwordController.text);
        password = _passwordController.text;
      });
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("MsgPage"), 
        actions: <Widget>[ //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body: new Container(
        color: Colors.white,
        child: new Column(children: <Widget>[
          new Text("12333"),
        ]),
      )
    );  
  }
}

class MsgPageList extends StatelessWidget {
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
        body: new Center(child: new Text("MsgPage"))
      ),
    );
  }
}