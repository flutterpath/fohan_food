import 'package:flutter/material.dart';

class Bubble extends StatefulWidget {
  @override
  _BubbleState createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  @override
  int selectedArea = 0;
  int selectedSort = 0;
  int selectedMore = 0;
  sampleFunction() {}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45, left: 24),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    size: 25,
                  ),
                  color: Color(0xff0B2E40),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9),
                  ),
                  height: 48,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Bubble Tea",
                        fillColor: Color(0xffD9D9D9)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45, right: 18),
                child: IconButton(
                  icon: Icon(Icons.filter_list_sharp, size: 38),
                  color: Color(0xff7E7B7B),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Area",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
            child: Row(children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    selectedArea = 1;
                  });
                },
                color:
                    selectedArea == 1 ? Color(0xffCB3940) : Color(0xffD9D9D9),
                child: Text(
                  "District 1",
                  style: TextStyle(
                      color: selectedArea == 1 ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(width: 12),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedArea = 2;
                      {}
                    });
                  },
                  color:
                      selectedArea == 2 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                  child: Text(
                    "District 2",
                    style: TextStyle(
                        color: selectedArea == 2 ? Colors.white : Colors.black),
                  )),
              SizedBox(width: 12),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedArea = 3;
                    });
                  },
                  color:
                      selectedArea == 3 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                  child: Text(
                    " District 3 ",
                    style: TextStyle(
                        color: selectedArea == 3 ? Colors.white : Colors.black),
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
            child: Row(children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    selectedArea = 4;
                  });
                },
                color:
                    selectedArea == 4 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                child: Text(
                  "District 4",
                  style: TextStyle(
                      color: selectedArea == 4 ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(width: 12),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedArea = 5;
                    });
                  },
                  color:
                      selectedArea == 5 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                  child: Text(
                    "District 5",
                    style: TextStyle(
                        color: selectedArea == 5 ? Colors.white : Colors.black),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 32),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sort by",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
            child: Row(children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    selectedSort = 1;
                  });
                },
                color:
                    selectedSort == 1 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                child: Text(
                  "     Recommended     ",
                  style: TextStyle(
                      color: selectedSort == 1 ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(width: 12),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedSort = 2;
                    });
                  },
                  color:
                      selectedSort == 2 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                  child: Text(
                    "     Popularity     ",
                    style: TextStyle(
                        color: selectedSort == 2 ? Colors.white : Colors.black),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 32),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "More filter",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
            child: Row(children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    selectedMore = 1;
                  });
                },
                color:
                    selectedMore == 1 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                child: Text(
                  "     Promotion     ",
                  style: TextStyle(
                      color: selectedMore == 1 ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(width: 12),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedMore = 2;
                    });
                  },
                  color:
                      selectedMore == 2 ? Color(0xffCB3930) : Color(0XFFD9D9D9),
                  child: Text(
                    "       Pick-Up        ",
                    style: TextStyle(
                        color: selectedMore == 2 ? Colors.white : Colors.black),
                  )),
            ]),
          ),
          (selectedArea == 0 && selectedSort == 0 && selectedSort == 0)
              ? Container():Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 160),
                  child: ButtonTheme(
                      minWidth: double.infinity,
                      height: 48,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: Color(0xffCB3940),
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )),
                )
              
        ]),
      ),
    );
  }
}
