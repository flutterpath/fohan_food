import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool btnActivate=false;
  TextEditingController _username=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
                  child: Column(children: [
             Padding(padding: EdgeInsets.only(top:62,left:24),
                    child: Align(
              alignment:Alignment.topLeft,
              child:IconButton(
                icon: Icon(Icons.arrow_back_sharp),
                iconSize: 24,
                onPressed: (){
                  Navigator.pop(context);
                },            
              )
            ),
          ),
          Padding(padding: EdgeInsets.only(top:37),
                    child: Text(
              "Sign Up",
              style:TextStyle(
                fontSize: 28.0,
                color:Color(0xff0B2E40))
              ),
          ),
           Padding(padding: EdgeInsets.only(top: 42,left: 25,right: 25,bottom:16),
              child: RaisedButton(onPressed: () {
                  
              },
              color:Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey),),
              child: TextField(
                controller: _username,
                onChanged: (bcbscg){
                  if (_username.text.isEmpty) {
                    setState(() {
                    btnActivate=false;
                  });
                  } else {
                    setState(() {
                    btnActivate=true;
                  });
                  }
                  
                },
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "User Name "
                  ),
              ) ,

              ),
            ),
            Padding(padding: EdgeInsets.only(left:25,right: 25,top:16,bottom: 16),
          
            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey)),
              color: Colors.white,
             child: TextField(
               controller: _email,
                onChanged: (bcbscg){
                  if (_email.text.isEmpty) {
                    setState(() {
                    btnActivate=false;
                  });
                  } else {
                    setState(() {
                    btnActivate=true;
                  });
                  }
                  
                },
               obscureText: false,
               decoration: InputDecoration(
                   hintText: "Email",
               ),
             ),
              )
           ) ,
           Padding(padding: EdgeInsets.only(left:25,right: 25,top:16,bottom: 16),
          
            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Color(0xffEDEDED))),
              color: Colors.white,
             child: TextField(
               controller: _password,
                onChanged: (bcbscg){
                  if (_password.text.isEmpty) {
                    setState(() {
                    btnActivate=false;
                  });
                  } else {
                    setState(() {
                    btnActivate=true;
                  });
                  }
                  
                },
               obscureText: true,
               decoration: InputDecoration(
                   hintText: "Password",
               ),
             ),
              )
           ) ,
           Padding(padding: EdgeInsets.only(left:24,right:24,top:40),
                        child: ButtonTheme(minWidth: double.infinity,
                        height: 48,
                          child: RaisedButton(onPressed:(btnActivate)?(){
                           _navigateToNextScreen(context); 
                          }:null,
               shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
               color:Color(0xffCB3940),
               child: Text("Confirm",
               style: TextStyle(color: Colors.white,
               fontSize: 16),),
               ),
             ),
           )
          ],),
        ),
      ),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
  }
}