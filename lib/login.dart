import 'package:flutter/material.dart';
import 'package:flutter_demo/forgetpasswor.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
      (height:double.infinity,
      width:double.infinity ,
        
              child: SingleChildScrollView(
                              child: Column
        (
          children: [
            
          Padding(padding:EdgeInsets.only(top: 170,bottom: 10) ,
                        child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  
                  color: Colors.black,
                ),),
          ),
          SizedBox(height:45,),
          Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15,bottom:10),
            child: RaisedButton(onPressed: () {
                
            },
            color:Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.grey),),
            child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "User Name "
                ),
            ) ,

            ),
          ),
          SizedBox(height: 5, ),
          Padding(padding: EdgeInsets.only(left:15,right: 15,top:10,bottom: 10),
        
          child: RaisedButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.grey)),
            color: Colors.white,
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
                 hintText: "Password",
             ),
           ),
            )
         ) ,

                   Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               GestureDetector(onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Forgetpassword()));
               },
                                child: Text("Forgot password?",
                 style: TextStyle(
                   color: Colors.blue
                   
                 ),
                 ),
               ),
             ],
           ),
         
         SizedBox(height:30,),
         Padding(padding: EdgeInsets.all(15),
                      child: ButtonTheme(minWidth: double.infinity,
                        child: RaisedButton(
                 onPressed: (){},
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 color: Color(0xffCB3940),
                 child: Text(
                   "Sign In ",
                 style: TextStyle(
                   fontSize: 18.0,
                   color: Colors.white
                 ),),),
           ),
         ),
         Text(
           "OR",
        style: TextStyle(
          fontSize: 16.0,
          ), ),
        //   SizedBox(height:10),
        // Padding(padding: EdgeInsets.all(15),
        //           child: ButtonTheme(minWidth: double.infinity,
        //     child: RaisedButton(
        //       onPressed: (){},
        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //       color: Colors.blue,
        //       child: Row(children: [
        //         Icon(Icons. color: Colors.white,),
        //         Text('Sign In with facebook ', style: TextStyle(color: Colors.white),),
        //       ],),

        //     ),
        //   ),
        // )
        Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 7,bottom: 7),
                    child: ButtonTheme(minWidth: double.infinity,
                      child: SignInButton(
                        
                         Buttons.Facebook,
                         text: "Sign In with facebook",
                        onPressed: () {},
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                       ),
          ),
        ),
// with custom text
Padding(padding: EdgeInsets.only(left: 15,bottom: 7,top: 7,right:15),
  child:   ButtonTheme(minWidth: double.infinity,
  
    child:   SignInButton(
  
    
  
      Buttons.Google,
  
    
  
      text: "Sign In with Google",
  
    
  
      onPressed: () {},
  
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  
    ),
  
  ),
),
Row(children:[
  Padding(padding:EdgeInsets.all(35)),
  Text(
    "Don't have an account?",
    ),
    Text("Sign up now!",
    style:TextStyle(color: Colors.red,))
])
         ],),
              ),
      ),
    );
  }
  }