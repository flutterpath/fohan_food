import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List cardList = [Item1(), Item2(), Item3(), Item4()];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                  color: Color(0xffCB3940),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 58, left: 24),
                      child: Text("Delivery address",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 58, left: 200),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ))
                  ]),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 9, left: 24),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 7),
                      child: Text("Avenue street",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 17,
                        ))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, left: 24),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 48,
                      width: 325,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: "Seach",
                          fillColor: Color(0xffC4C3C3),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 305.0,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: cardList.map((card) {
                        return Builder(builder: (BuildContext context) {
                          return card;
                        });
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color(0XFFCB3940)
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return foodvariety();
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Divider()),
                  Container(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return fooddiscount();
                      },
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 20),
                      child: Text("Your Recent Vist",
                          style: TextStyle(
                              fontSize: 22, color: Color(0xff0B2E40))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120, top: 25),
                      child: Text("Show all",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xffCB3940))),
                    )
                  ]),
                  Container(
                    height: 202,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return foodCourt();
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 28),
                      child: Divider()),
                  TabBar(
                    controller: _tabController,
                    labelColor: Color(0xffCB3940),
                    indicatorColor: Color(0xffCB3940),
                    unselectedLabelColor: Color(0xff7E7B7B),
                    tabs: [
                      Tab(
                        text: 'Delivery',
                      ),
                      Tab(
                        text: 'Menu',
                      ),
                      Tab(
                        text: 'Review',
                      ),
                    ],
                  ),
                  SizedBox(height: 200,
                                      child: TabBarView(controller: _tabController, children: [
                        ListView.builder(
                 
                              itemCount: 10,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return foodCard();
                              }),
                        ListView.builder(
                   
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return foodCard();
                            }),
                        ListView.builder(
                        
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return foodCard();
                            })
                      ]),
                  ),
                
                ])
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0XFFCB3940),
        selectedLabelStyle:TextStyle(color:Colors.white) ,
        unselectedItemColor: Color(0XFFC4C3C3),
        unselectedLabelStyle: TextStyle(color: Color(0XFFC4C3C3)),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),title: Text('My Order')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),title: Text('Saved')),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),title: Text('Profile'))
      ],),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            'assets/images/food.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 50,
          left: 18,
          child: Container(
            height: 110,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 15),
                child: Text(
                  "S&L DINER ",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text("189 Avenue Street,Edinbugh",
                    style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                  child: Divider(
                    color: Color(0xffD9D9D9),
                  )),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.star_purple500_sharp,
                    size: 16,
                    color: Color(0XFFFABC41),
                  ),
                ),
                Text(
                  "  4.9 (284)",
                  style: TextStyle(fontSize: 12, color: Color(0xff244495)),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.alarm,
                  color: Color(
                    0XFF5270BD,
                  ),
                  size: 16,
                ),
                Text(
                  "  15-25 mins",
                  style: TextStyle(fontSize: 12, color: Color(0xff244495)),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.check_box_outline_blank_rounded,
                  size: 16,
                  color: Color(0xff5270BD),
                ),
                Text(
                  "  Free",
                  style: TextStyle(fontSize: 12, color: Color(0xff244495)),
                ),
              ])
            ]),
          ),
        )
      ],
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: Image.asset(
          'assets/images/food.png',
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        bottom: 50,
        left: 18,
        child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "S&L DINER ",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("189 Avenue Street,Edinbugh",
                  style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B))),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Divider(
                  color: Color(0xffD9D9D9),
                )),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(
                  Icons.star_purple500_sharp,
                  size: 16,
                  color: Color(0XFFFABC41),
                ),
              ),
              Text(
                "  4.9 (284)",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.alarm,
                color: Color(
                  0XFF5270BD,
                ),
                size: 16,
              ),
              Text(
                "  15-25 mins",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.check_box_outline_blank_rounded,
                size: 16,
                color: Color(0xff5270BD),
              ),
              Text(
                "  Free",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
            ])
          ]),
        ),
      )
    ]);
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Image.asset(
          'assets/images/food.png',
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        bottom: 50,
        left: 18,
        child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "S&L DINER ",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("189 Avenue Street,Edinbugh",
                  style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B))),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Divider(
                  color: Color(0xffD9D9D9),
                )),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(
                  Icons.star_purple500_sharp,
                  size: 16,
                  color: Color(0XFFFABC41),
                ),
              ),
              Text(
                "  4.9 (284)",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.alarm,
                color: Color(
                  0XFF5270BD,
                ),
                size: 16,
              ),
              Text(
                "  15-25 mins",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.check_box_outline_blank_rounded,
                size: 16,
                color: Color(0xff5270BD),
              ),
              Text(
                "  Free",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
            ])
          ]),
        ),
      )
    ]);
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: Image.asset(
          'assets/images/food.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        bottom: 50,
        left: 18,
        child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "S&L DINER ",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("189 Avenue Street,Edinbugh",
                  style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B))),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                child: Divider(
                  color: Color(0xffD9D9D9),
                )),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(
                  Icons.star_purple500_sharp,
                  size: 16,
                  color: Color(0XFFFABC41),
                ),
              ),
              Text(
                "  4.9 (284)",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.alarm,
                color: Color(
                  0XFF5270BD,
                ),
                size: 16,
              ),
              Text(
                "  15-25 mins",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.check_box_outline_blank_rounded,
                size: 16,
                color: Color(0xff5270BD),
              ),
              Text(
                "  Free",
                style: TextStyle(fontSize: 12, color: Color(0xff244495)),
              ),
            ])
          ]),
        ),
      )
    ]);
  }
}

Widget foodvariety() {
  return Column(mainAxisSize: MainAxisSize.min, children: [
    Image.asset(
      "assets/images/Seafood.png",
      height: 90,
    ),
  ]);
}

Widget fooddiscount() {
  return Column(mainAxisSize: MainAxisSize.min, children: [
    Padding(
        padding: EdgeInsets.only(top: 20, left: 16),
        child: Image.asset(
          "assets/images/kunal.png",
          height: 150,
        )),
  ]);
}

Widget foodCourt() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 20, left: 16),
            child: Image.asset(
              "assets/images/food.png",
              height: 120,
            )),
        Padding(
            padding: EdgeInsets.only(left: 16, top: 5),
            child: Text("Pizza 4p",
                style: TextStyle(fontSize: 16, color: Color(0xff0B2E40)))),
        Padding(
            padding: EdgeInsets.only(left: 16, top: 3),
            child: Text("Western Cuisine",
                style: TextStyle(fontSize: 12, color: Color(0xff7E7B7B)))),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 2),
            child: Icon(
              Icons.star_purple500_sharp,
              size: 18,
              color: Color(0XFFFABC41),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              "4.9 (284)",
              style: TextStyle(fontSize: 14, color: Color(0xff244495)),
            ),
          ),
        ]),
      ]);
}

Widget foodCard() {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
  Padding(
    padding: EdgeInsets.only(top: 20),
    child: Container(
      height: 107,
      width: 107,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Rectangle.png'))),
    ),
  ),
  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Text(
            "Ding Tea",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, top: 20),
          child: Icon(
            Icons.star_purple500_sharp,
            size: 18,
            color: Color(0XFFFABC41),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "4.9 (284)",
            style: TextStyle(fontSize: 14, color: Color(0xff244495)),
          ),
        )
      ],
    ),
    Padding(
        padding: EdgeInsets.only(top: 4, left: 15),
        child: Text(
          "189 Giang Vo",
          style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B)),
        )),
    Row(children: [
      Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Container(
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD9D9D9),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffF0EEEE), blurRadius: 1, spreadRadius: 1)
              ]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.alarm,
                  size: 20,
                  color: Color(0xffCB3940),
                ),
              ),
              Text(
                "   5 mins   ",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff0C0B52),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Padding(
        padding: EdgeInsets.only(top: 18),
        child: Container(
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFD9D9D9),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffD9D9D9), blurRadius: 1, spreadRadius: 1)
              ]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 20,
                  color: Color(0xffCB3940),
                ),
              ),
              Text(
                "   286 m   ",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff0C0B52),
                ),
              )
            ],
          ),
        ),
      ),
    ]),
    SizedBox(
      width: 20,
    ),
  ]),
    ]);
}
