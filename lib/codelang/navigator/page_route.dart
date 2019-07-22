import 'package:flutter_app/codelang/page/HomePage.dart';
import 'package:flutter_app/codelang/page/ShopPage.dart';
import 'package:flutter_app/codelang/page/FlexLayoutPage.dart';
import 'package:flutter_app/codelang/page/ExpandPage.dart';
import 'package:flutter_app/codelang/page/MsgPage.dart';
import 'package:flutter_app/codelang/page/MyPage.dart';
import 'package:flutter_app/codelang/MainPage.dart';
import 'package:flutter/material.dart';

class Page {
  static const String MAIN_PAGE = '/mainPage';
  static const String HOME_PAGE = '/homePage';
  static const String SHOP_PAGE = '/shopPage';
  static const String FLEX_LAYOUT_PAGE = '/flexLayoutPage';
  static const String EXPAND_PAGE = '/expandPage';
  static const String MSG_PAGE = '/msgPage';
  static const String MY_PAGE = '/myPage';

  static Map<String, WidgetBuilder> getRoutes() {
    var route = {
      MAIN_PAGE: (context) => MainPage(),
      HOME_PAGE: (context) => HomePage(),
      SHOP_PAGE: (context) => ShopPage(),
      FLEX_LAYOUT_PAGE: (context) => FlexLayoutPage(),
      EXPAND_PAGE: (context) => ExpandPage(),
      MSG_PAGE: (context) => MsgPage(),
      MY_PAGE: (context) => PageWidget()
    };
    return route;
  }
}
