import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Kunal extends StatefulWidget {
  @override
  _KunalState createState() => _KunalState();
}

class _KunalState extends State<Kunal> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
          child: Row(children: [
        CarouselSlider(
        carouselController: buttonCarouselController,
              options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
          items: [
            Image.asset('assets/images/search.png'),],
            // decoration:BoxDecoration(borderRadiud:BorderRadius.circular())],
      
        ),
        RaisedButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        ),
      ],),
    )
    );
  }
}