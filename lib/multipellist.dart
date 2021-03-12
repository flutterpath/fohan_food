import 'package:flutter/material.dart';


class ListK extends StatefulWidget {
  @override
  _ListKState createState() => _ListKState();
}

class _ListKState extends State<ListK> {
final List<String> entries = <String>['A', 'B', 'C','D','E','F','G','H','I','J','K','L','M'];
final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100, 600, 500, 100, 600, 500, 100, 600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          padding: EdgeInsets.all(8.0),
          itemCount: entries.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),),
        
),
);
  }
}