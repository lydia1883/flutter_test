
import 'package:flutter/material.dart';
import 'package:flutter_app/codelang/page/MsgPage.dart';
import 'package:flutter_app/codelang/page/HomePage.dart';
import 'package:flutter_app/codelang/page/MyPage.dart';
import 'package:flutter_app/codelang/page/RowColumn.dart';
import 'package:flutter_app/codelang/page/TestPage.dart';


class Point <T> { 
  int x,y;
  Point(this.x, this.y);
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  BottomNavigationBarState createState() => new BottomNavigationBarState();
}

class BottomNavigationBarState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  Point point = new Point(1,2);
  @override
  void initState() {
    list
    ..add(new HomePage())
    ..add(new MsgPage())
    ..add(new TestPage())
    ..add(new PageWidget())
    ..add(new RowColumn());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: list[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:_bottomNavigationColor,
            ),
            title: Text(
              'HOME',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color:_bottomNavigationColor,
            ),
            title: Text(
              'SHOP',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              color:_bottomNavigationColor,
            ),
            title: Text(
              'OUR',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grade,
              color:_bottomNavigationColor,
            ),
            title: Text(
              'MESSAGE',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color:_bottomNavigationColor,
            ),
            title: Text(
              'MY',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState((){
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
