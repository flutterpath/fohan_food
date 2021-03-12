import 'package:flutter/material.dart';


class Vivek extends StatefulWidget {
  @override
  _VivekState createState() => _VivekState();
}

class _VivekState extends State<Vivek> {
 bool _hasBeenPressed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40, width: MediaQuery.of(context).size.width,),

              Image.asset(
                "assets/images/splash.png",
                width: 300.0,
                height: 300.0,
              ),
          SizedBox(height: 50,width: MediaQuery.of(context).size.width,), 
              Text(
               "Delivery Food\nto your door",
               textAlign:TextAlign.center,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(
                 
                 fontSize:28.0,
                  ),
             ),
             SizedBox(height:30,),
             Text(
               "Find the right restaurant for you",
               textAlign:TextAlign.center,
               style: TextStyle(
                 fontSize:16.0,
                 fontWeight: FontWeight.w300, 
               ),),
          
          Padding(padding: EdgeInsets.only(top:40,bottom: 15,left: 24,right: 24 ),
                      child: ButtonTheme(
              minWidth: double.infinity,
            
       child:RaisedButton(
            color: _hasBeenPressed ?Colors.grey:Color(0xffCB3940),
             shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Sign In',
               style: TextStyle(fontSize: 18)),
            
            textColor: Colors.white,
            onPressed: () => {
              setState((){
                _hasBeenPressed = !_hasBeenPressed;
              })
            },
          
       ),
            ),
          ),
          
          
          Padding(padding: EdgeInsets.only(top:15,bottom: 49,left: 24,right: 24),
                      child: ButtonTheme(
              minWidth: double.infinity,
       child:RaisedButton(
             color: Colors.white,
             
            onPressed: () {},
             shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Skip',
               style: TextStyle(fontSize: 18,
               color: Color(0xffCB3940))),
            
            elevation: 5,
            )),
          ) ],
            ),
        ),
      );
    
  }
}