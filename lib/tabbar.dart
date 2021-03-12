

 import 'package:flutter/material.dart';


class Tabk extends StatefulWidget {
  @override
  _TabkState createState() => _TabkState();
}

class _TabkState extends State<Tabk> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  
        length: 2,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text('Flutter Tabs Demo'),  
            bottom: TabBar(  
              tabs: [  
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),  
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")  
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              Text("hsdvhdsvhusdbvdssd"),  
              Text("fvshduysdv"),  
            ],  
          ),  
        ),  
      );
    

  }
}