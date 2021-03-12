 
 import 'package:flutter/material.dart';
 
class Sliderpage extends StatelessWidget {
  String title;
  String description;
  String image;

  

 Sliderpage({ this.title,this.description,this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Image.asset(    
         image,
                width: 300.0,
                height: 300.0,),
                SizedBox(height:60,),
                Text(title,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                SizedBox(height:20,),
                Padding(padding: EdgeInsets.only(left:20),
                                  child: Text(description,style:TextStyle(
                    height: 1.5,
                    fontSize: 14,fontWeight: FontWeight.normal,letterSpacing: 0.7),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(height:60)
                
      ],),
//       body: ListView( 
//         children: [ 
//           CarouselSlider( 
//               items: [

                  
//                 //1st Image of Slider 
//                 Container( 
//                   margin: EdgeInsets.all(6.0), 
//                   decoration: BoxDecoration( 
//                     borderRadius: BorderRadius.circular(8.0), 
//                     image: DecorationImage( 
//                       image: NetworkImage("assests/images/log.jpg"), 
//                       fit: BoxFit.cover, 
//                     ), 
//                   ), 
//                 ), 
                  
//                 //2nd Image of Slider 
//                 Container( 
//                   margin: EdgeInsets.all(6.0), 
//                   decoration: BoxDecoration( 
//                     borderRadius: BorderRadius.circular(8.0), 
//                     image: DecorationImage( 
//                       image: NetworkImage("assets/images/search.png"), 
//                       fit: BoxFit.cover, 
//                     ), 
//                   ), 
//                 ), 
                  
//                 //3rd Image of Slider 
//                 Container( 
//                   margin: EdgeInsets.all(6.0), 
//                   decoration: BoxDecoration( 
//                     borderRadius: BorderRadius.circular(8.0), 
//                     image: DecorationImage( 
//                       image: NetworkImage("assets/images/splash.png"), 
//                       fit: BoxFit.cover, 
//                     ), 
//                   ), 
//                 ), 
                  
//                 //4th Image of Slider 
//                 Container( 
//                   margin: EdgeInsets.all(6.0), 
//                   decoration: BoxDecoration( 
//                     borderRadius: BorderRadius.circular(8.0), 
//                     image: DecorationImage( 
//                       image: NetworkImage("ADD IMAGE URL HERE"), 
//                       fit: BoxFit.cover, 
//                     ), 
//                   ), 
//                 ), 
                  
//                 //5th Image of Slider 
//                 Container( 
//                   margin: EdgeInsets.all(6.0), 
//                   decoration: BoxDecoration( 
//                     borderRadius: BorderRadius.circular(8.0), 
//                     image: DecorationImage( 
//                       image: NetworkImage("ADD IMAGE URL HERE"), 
//                       fit: BoxFit.cover, 
//                     ), 
//                   ), 
//                 ), 
  
//           ], 
              
//             //Slider Container properties 
//               options: CarouselOptions( 
//                 height: 180.0, 
//                 enlargeCenterPage: true, 
//                 autoPlay: true, 
//                 aspectRatio: 16 / 9, 
//                 autoPlayCurve: Curves.fastOutSlowIn, 
//                 enableInfiniteScroll: true, 
//                 autoPlayAnimationDuration: Duration(milliseconds: 800), 
//                 viewportFraction: 0.8, 
//               ), 
//           ), 
//         ], 
//       ), 
  
     ); 
   } 
 }