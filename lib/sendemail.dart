

import 'package:flutter/material.dart';
import 'package:flutter_demo/signup.dart';

class SendEmail extends StatefulWidget {
  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
      child: SingleChildScrollView(
              child: Column(
          children: [
          Padding(padding: EdgeInsets.only(top:50,left:25),
                    child: Align(
              alignment:Alignment.topLeft,
              child:Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              
              )
            ),
          ),
          // IconButton(icon:Icon (Icons.arrow_back_sharp),
          //  onPressed: (){},
          // ),
          Padding(padding: EdgeInsets.only(top:55),
                    child: Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 28.0,
                
                color: Color(0xff0B2E40)
              ),),
          ),
          
            Padding(padding: EdgeInsets.only(top:30),
              child:
               Text("Please enter your email address\n You will receive a link to create\n     a new password via email",
               style: TextStyle(
                 fontSize: 16.0,
                 color: Color(0xff7E7B7B)
               )),
               ),
               Padding(padding: EdgeInsets.only(top: 70,left: 15,right: 15,bottom:10),
              child: RaisedButton(onPressed: () {},

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              side: BorderSide(color:Color(0XffEDEDED)),
              ),
              color: Colors.white,
              child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Email "
                  ),
              ) ,

              ),
            ),
             Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom:10),
              child: ButtonTheme(minWidth: double.infinity,
              height: 47.0,
                            child: RaisedButton(onPressed: () {
                              _navigateToNextScreen(context);
                            },

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              
                ),
                color:Color(0xffCB3940),
                child: Text("Send",
                  textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                    fontSize: 18.0),

                    ),
                ),
              ) ,

              ),
            
        ],),
      ),  


      ),
    );
  }
    void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
  }
}