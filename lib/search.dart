import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70, width: MediaQuery.of(context).size.width,),

              Image.asset(
                "assets/images/search.png",
                width: 300.0,
                height: 300.0,
              ),
              
          SizedBox(height: 70,width: MediaQuery.of(context).size.width,), 
              Text(
               "Find all restaurant\n in one app",
               textAlign:TextAlign.center,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(
                 
                 fontSize:28.0, ),
             ),
             SizedBox(height:30,),
             Text(
               "Choose your favourite restaurant ",
               textAlign:TextAlign.center,
               style: TextStyle(
                 fontSize:16.0,
                 fontWeight: FontWeight.w300, 
               ),),
          SizedBox(height:25.0,),
          (Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
                      child: ButtonTheme(
              minWidth: double.infinity,
            
       child:RaisedButton(
             
            onPressed: () {},
             shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                        color: Color(0xffCB3940),
            child: const Text(
              'Sign In',
               style: TextStyle(fontSize: 18)),
            
            textColor: Colors.white,
            elevation: 5,
       ),
            ),
          )),
          SizedBox(height:2,),
          Padding(padding: EdgeInsets.only(left:24,right: 24,top:15),
                      child: ButtonTheme(
              minWidth: double.infinity,
       child:RaisedButton(
             color: Colors.white,
             
            onPressed: () {},
             shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
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