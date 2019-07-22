import 'package:flutter/material.dart';
import 'package:flutter_app/codelang/widget/Demo1.dart';
import 'package:flutter_app/codelang/page/ExpandPage.dart';
import 'package:flutter_app/codelang/navigator/page_route.dart';

// class MyPage extends StatelessWidget {
//   // var parentContext;
//   // MyPage(this.parentContext);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // return new PageWidget(parentContext);
//     return new PageWidget()
//   }
// }

class PageWidget extends StatefulWidget {
  @override
  PageState createState() => new PageState();
}

class PageState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(   //列
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  //居中
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,  //占用最小空间
            mainAxisAlignment: MainAxisAlignment.center,  //center失效
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,  //center失效
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,  
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(" hello world ", style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack "),
            ],
          ),
          RaisedButton(
            child: Text("跳转"),
            onPressed: _pushPage
          )
        ],
      ),
    ); 
  }
  _pushPage() {
    // Navigator.pushNamed(context, Page.EXPAND_PAGE);
    Navigator.pushNamed(context, Page.MSG_PAGE);
    // Navigator.push(context, new MaterialPageRoute(
    //   builder: (context) =>new ExpandPage())
    // );
  }
}