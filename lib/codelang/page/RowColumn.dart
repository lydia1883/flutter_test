import 'package:flutter/material.dart';



class RowColumn extends StatefulWidget {
  @override
  RowColumnState createState() => new RowColumnState();
}

class RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],
    );
  }
}