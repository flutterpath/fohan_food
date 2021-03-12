import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  List<String> name = ["Cookie Heaven", "Pizza's", "Udon"];
  bool hasbeenpressed = false;
  bool textcolor = false;
  bool teapresses = false;
  bool teatextcolor = false;
  bool coffeepressed = false;
  bool coffeetextcolor = false;
  bool coffeepresses = false;
  bool coffeetextColor = false;
  bool vietnamesepressed = false;
  bool vietnamesetextcolor = false;
  bool weterpressed = false;
  bool westertextcolor = false;
  bool bubblepresses = false;
  bool bubbletextcolor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        size: 25,
                      ),
                      color: Color(0xff0B2E40),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 45,
                      ),
                      child: Container(
                        height: 48,
                        //width: width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintText: "Search"),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              name.isNotEmpty
                  ? Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Text(
                              "Recent History",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                name.clear();
                              });
                            },
                            child: Text(
                              "Clear all",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffCB3940)),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Text(
                            name[index],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.cancel_presentation_rounded),
                          color: Color(0xffCB3940),
                          onPressed: () {
                            setState(() {
                              name.remove(name[index]);
                            });
                          },
                        )
                      ],
                    );
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Trending",
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: RaisedButton(
                      child: Text(
                        "     Wester Cuisine     ",
                        style: TextStyle(
                          fontSize: 14,
                          color: westertextcolor ? Colors.white : Colors.black,
                        ),
                      ),
                      color:
                          weterpressed ? Color(0xffCB3940) : Color(0xffD9D9D9),
                      onPressed: () => setState(() {
                        weterpressed = !weterpressed;
                        westertextcolor = !westertextcolor;
                      }),
                    )),
                SizedBox(
                  width: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "     Bubble Tea     ",
                      style: TextStyle(
                          fontSize: 14,
                          color: bubbletextcolor ? Colors.white : Colors.black),
                    ),
                    color:
                        bubblepresses ? Color(0xffCB3940) : Color(0xffD9D9D9),
                    onPressed: () => setState(() {
                      bubblepresses = !bubblepresses;
                      bubbletextcolor = !bubbletextcolor;
                    }),
                  ),
                )
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "Coffee",
                      style: TextStyle(
                          fontSize: 14,
                          color: coffeetextColor ? Colors.white : Colors.black),
                    ),
                    color:
                        coffeepresses ? Color(0xffCB3940) : Color(0xffD9D9D9),
                    onPressed: () => setState(() {
                      coffeepresses = !coffeepresses;
                      coffeetextColor = !coffeetextColor;
                    }),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "Vietnamese Food",
                      style: TextStyle(
                          fontSize: 14,
                          color: vietnamesetextcolor
                              ? Colors.white
                              : Colors.black),
                    ),
                    color: vietnamesepressed
                        ? Color(0xffCB3940)
                        : Color(0xffD9D9D9),
                    onPressed: () => setState(() {
                      vietnamesepressed = !vietnamesepressed;
                      vietnamesetextcolor = !vietnamesetextcolor;
                    }),
                  ),
                )
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "Coffee",
                      style: TextStyle(
                          fontSize: 14,
                          color: coffeetextcolor ? Colors.white : Colors.black),
                    ),
                    color:
                        coffeepressed ? Color(0xffCB3940) : Color(0xffD9D9D9),
                    onPressed: () => setState(() {
                      coffeepressed = !coffeepressed;
                      coffeetextcolor = !coffeetextcolor;
                    }),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "Tea",
                      style: TextStyle(
                          fontSize: 14,
                          color: teatextcolor ? Colors.white : Colors.black),
                    ),
                    color: teapresses ? Color(0xffCB3940) : Color(0xffD9D9D9),
                    onPressed: () => setState(() {
                      teapresses = !teapresses;
                      teatextcolor = !teatextcolor;
                    }),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: RaisedButton(
                    child: Text(
                      "Pizza/Pasta",
                      style: TextStyle(
                          fontSize: 14,
                          color: textcolor ? Colors.white : Colors.black),
                    ),
                    color:
                        hasbeenpressed ? Color(0xffCB3940) : Color(0xffD9D9D9),
                    onPressed: () => {
                      setState(() {
                        hasbeenpressed = !hasbeenpressed;
                        textcolor = !textcolor;
                      })
                    },
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
