import 'package:flutter/material.dart';

class SelectFood extends StatefulWidget {
  @override
  _SelectFoodState createState() => _SelectFoodState();
}

class _SelectFoodState extends State<SelectFood> with TickerProviderStateMixin {
  TabController _tabController;
  List<String> name = [];
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15,top: 20
              ),
              child: Text(
                "Ding Tea",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60,top: 20
              ),
              child: Icon(
                Icons.star_purple500_sharp,size: 18,
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
            padding: EdgeInsets.only(
              top: 4,left: 15
            ),
            child: Text(
              "189 Giang Vo",
              style: TextStyle(fontSize: 14, color: Color(0xff7E7B7B)),
            )),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 15,top: 15),
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9D9D9),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffF0EEEE),
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: Icon(
                      Icons.alarm,size: 20,
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
          Padding(padding: EdgeInsets.only(top:18),
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
                      Icons.location_on_outlined,size: 20,
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 45,right: 7,
                  ),
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
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: "Find Address"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 45,left: 2
                  ),
                  child: IconButton(
                    icon: Icon(Icons.filter_list_sharp, size: 38),
                    color: Color(0xff7E7B7B),
                    onPressed: () {},
                  ),
                )
              ],
            ),
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
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
