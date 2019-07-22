import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  @override
  MsgState createState() => new MsgState();
}

class MsgState extends State<MsgPage> { 
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;
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
          TextField(
            autofocus: true, 
            focusNode: focusNode1,
            controller: _unameController,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)
            )
          ),
          TextField(
            focusNode: focusNode2,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登陆密码",
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
          Builder(builder: (ctx) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    //将焦点从第一个TextField移到第二个TextField
                    // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                    // 这是第二种写法
                    if(null == focusScopeNode){
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                  },
                ),
                RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                ),
              ],
            );
          })
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