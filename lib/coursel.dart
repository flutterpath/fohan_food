import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; 


class Coursel extends StatefulWidget {
  @override
  _CourselState createState() => _CourselState();
}

class _CourselState extends State<Coursel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(items: [
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(image: NetworkImage('assets/images/search.png'),
              fit: BoxFit.cover,
              ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(6.0),
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(image: NetworkImage('assets/images/splash.png'),
              fit: BoxFit.cover,))
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(image: NetworkImage('assets/images/log.jpg'),
              fit: BoxFit.cover,)),
            ),
            Container(
              margin:EdgeInsets.all(6.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(image: NetworkImage('assets/images/ind.png'),
              fit: BoxFit.cover,)),
            ),
            Container( 
                  margin: EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: DecorationImage( 
                      image: NetworkImage('assets/images/food.png'), 
                      fit: BoxFit.cover, 
                    ), 
                  ), 
                ), 
  
          ],
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ), 
          ),
        ],
      ),
    );
  }
}