import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: LoopPageView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return Card(
                child: Center(
                  child: Text('$index'),
                ),
              );
            },
          ),
        ),
      );
    
  }
}