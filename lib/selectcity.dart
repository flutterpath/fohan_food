import 'package:flutter/material.dart';
import 'package:flutter_demo/models/select_city.dart';

class SelectCity extends StatefulWidget {
  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  final List<String> entries = <String>[
    'Edinburgh',
    'Wales',
    'Manchester',
    'Leeds',
    'New Castel',
    'Liverpool',
    'London'
  ];

  // final List<String> kunal = <String>['200 Stores'];
  int selected;
  List<SelectCityModedl> _list = new List();

  void initSate() {
    super.initState();
    _list.add(SelectCityModedl('CVW', '100'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 28, top: 60),
        child: ButtonTheme(
          minWidth: double.infinity,
          height: 48,
          child: RaisedButton(
            onPressed: () {},
            color: Color(0xffCB3940),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Confirm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 25),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_sharp),
                    onPressed: null,
                    iconSize: 24,
                    color: Color(0xff0B2E40),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 52, left: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Select Province/city",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {},
              color: Color(0xffF0EEEE),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: null,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 16.0, color: Color(0xffC4C3C3)),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: entries.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 24, bottom: 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  entries[index],
                                  style: TextStyle(
                                      color: Color(0xff0B2E40), fontSize: 16.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24, bottom: 13.5),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "200 Stores",
                                  style: TextStyle(
                                      color: Color(0xff7E7B7B), fontSize: 16.0),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Padding(padding: EdgeInsets.only(left:200),
                        //   child: Icon(Icons.check,
                        //   color: Color(0xffCB3940),
                        //   ),
                        // ),
                        selected == index
                            ? Padding(
                                padding: EdgeInsets.only(left: 200),
                                child: Icon(
                                  Icons.check,
                                  color: Color(0xffCB3940),
                                ))
                            : Container()
                      ],
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
