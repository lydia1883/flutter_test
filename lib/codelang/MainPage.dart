import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_app/codelang/page/MsgPage.dart';
import 'package:flutter_app/codelang/page/HomePage.dart';
import 'package:flutter_app/codelang/page/ShopPage.dart';
import 'package:flutter_app/codelang/page/MyPage.dart';
import 'package:flutter_app/codelang/page/RowColumn.dart';
import 'package:flutter_app/codelang/page/TestPage.dart';
import 'package:flutter_app/codelang/page/ExpandPage.dart';
import 'package:flutter_app/codelang/widget/Demo1.dart';
import 'package:flutter_app/codelang/page/FlexLayoutPage.dart';

import 'package:flutter_app/codelang/navigator/page_route.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MainPageWidget();
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages = [];
  var appBarTitles = ["首页", "测试", "消息", "我的", "加班"];

  /*
  * 根据image路径获取图片
  * 这个图片的路径需要在 pubspec.yaml 中去定义
  */
  Image getTabImage(path){
    return new Image.asset(path, width: 20.0,height: 20.0);
  }

  /*
  * 根据索引获得对应的normal或是press的icon
  */

  Image getTabIcon(int curIndex) {
    if(curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */

  Text getTabTitle (int curIndex) {
    if(curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
        style: new TextStyle(color: const Color(0xff63ca6c))
      );
    } else {
      return new Text(appBarTitles[curIndex],
        style: new TextStyle(color: const Color(0xff888888))
      );
    }
  }

  /*
   * 存储的四个页面，和Fragment一样
   */

  List _bodys;
  void initData() {
    /*
      tabbar图片
    */
    tabImages = [
      [
        getTabImage('assets/images/home.png'),
        getTabImage('assets/images/home_press.png')
      ],
      [
        getTabImage('assets/images/shop.png'),
        getTabImage('assets/images/shop_press.png')
      ],
      [
        getTabImage('assets/images/msg.png'),
        getTabImage('assets/images/msg_press.png')
      ],
      [
        getTabImage('assets/images/my.png'),
        getTabImage('assets/images/my_press.png')
      ],
      [
        getTabImage('assets/images/msg.png'),
        getTabImage('assets/images/msg_press.png')
      ],
    ];
    _bodys = [
      new HomePage(),
      new MsgPage(),
      new TestPage(),
      new PageWidget(),
      new RowColumn()
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    initData();
    return new Scaffold(
      body: _bodys[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1)),
          new BottomNavigationBarItem(
              icon: getTabIcon(2), title: getTabTitle(2)),
          new BottomNavigationBarItem(
              icon: getTabIcon(3), title: getTabTitle(3)),
          new BottomNavigationBarItem(
              icon: getTabIcon(4), title: getTabTitle(4)),
        ],
        //设置显示的模式
        type: BottomNavigationBarType.fixed,
        //设置当前的索引
        currentIndex: _tabIndex,
        //tabBottom的点击监听
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
