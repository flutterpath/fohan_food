import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Corsel extends StatefulWidget {
  @override
  _CorselState createState() => _CorselState();
}

class _CorselState extends State<Corsel> {
  int _currentIndex=0;
List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];
List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: <Widget>[
    CarouselSlider(
      options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card){
                return Builder(
                  builder:(BuildContext context){
                    return card;
                  }
                );
              }).toList(),
            ),
            
    
        Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: map<Widget>(cardList, (index, url) {
    return Container(
      width: 10.0,
      height: 10.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
       ),
     );
   }),
 ),
      ],
    )
  
);
  
  }
}
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/food.png',
        height: 180.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/food.png',
        height: 180.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Image.asset(
        'assets/images/food.png',
        height: 180.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(100)),
      child: Image.asset('assets/images/food.png',
      height: 180.0,
      fit: BoxFit.cover,),
    );
  }
}