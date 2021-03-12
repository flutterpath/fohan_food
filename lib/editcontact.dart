import 'package:flutter/material.dart';


class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  bool value=false;
  int selected=0;
  bool valuefirst=false;
  int deliveryselevted=0;
   bool btnActivate=false;
   TextEditingController _name=TextEditingController();
   TextEditingController _mobileNo=TextEditingController();
   TextEditingController _address=TextEditingController();
   TextEditingController _notes=TextEditingController();
   String name,mobile,address,notes,otherAddress;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
     body: SingleChildScrollView(
            child: Container(
              child: Padding(padding: EdgeInsets.only(left:20,right:20),
                            child: Column(
         children: [
                Row(children:[
                  Padding(
                    padding: EdgeInsets.only(top:30),
                    child: IconButton(icon: Icon(Icons.arrow_back_sharp),
                    iconSize: 24,
                    color: Color(0xff0B2E40), onPressed: () {  },),
                    
                  ),
                  Padding(padding: EdgeInsets.only(left:20,top:30),
                                child: Text("Edit Contact",
                    style: TextStyle(color: Color(0xff0B2E40),
                    fontSize: 22
                    ),
                    ),
                  ),
                ]
                ),
         Padding(padding: EdgeInsets.only(top: 20),
                  child: Align(alignment: Alignment.topLeft,
                                  child: Text("Contact Information",
           style: TextStyle(
             fontSize: 16,
           ),),
                  ),
         ),
        
           Padding(padding: EdgeInsets.only(top: 20),
                        child: Row(
                 children: [
                   Expanded(flex: 1,
                              child: TextField(
                                decoration:InputDecoration( 
                       prefixIcon: Icon(Icons.person_outline_outlined),
                       hintText: " Name"),
                     controller: _name,
                onChanged: (typedName){
                  // if (_name.text.isEmpty) {
                  //   setState(() {
                  //   btnActivate=false;
                  // });
                  // } else {
                  //   setState(() {
                  //   btnActivate=true;
                  // });
                  // }
                  setState(() {
                    name=typedName;
                  });
                },),
                   ),
                   SizedBox(width: 30,),
                   Expanded(flex: 1,
                              child: TextField(
                                decoration:InputDecoration( 
                       prefixIcon: Icon(Icons.phone),
                       hintText: "Mobile NO"),
                    controller: _mobileNo,
                onChanged: (typedMobile){
                  // if (_mobileNo.text.isEmpty) {
                  //   setState(() {
                  //   btnActivate=false;
                  // });
                  // } else {
                  //   setState(() {
                  //   btnActivate=true;
                  // });
                  // }
                  mobile=typedMobile;
                }, ),
                   ),
                 ],
             ),
           ),
           SizedBox(height:20),
        Row(
            children: [
              Expanded(
                            child: TextField(
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.home),
                    hintText: "Address",
                    suffixIcon: Icon(Icons.arrow_forward_ios)
                  ),
                controller: _address,
                onChanged: (typedaddress){
                  // if (_address.text.isEmpty) {
                  //   setState(() {
                  //   btnActivate=false;
                  // });
                  // } else {
                  //   setState(() {
                  //   btnActivate=true;
                  // });
                  // }
                  address=typedaddress;
                },),
              )
            ],
),
SizedBox(height:20),
Row(
  children:[
    Expanded(child: TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.sticky_note_2_outlined),
    hintText: "Notes"),controller: _notes,
                onChanged: (typeNote){
                  // if (_notes.text.isEmpty) {
                  //   setState(() {
                  //   btnActivate=false;
                  // });
                  // } else {
                  //   setState(() {
                  //   btnActivate=true;
                  // });
                  // }
                  notes=typeNote;
                },))
  ]
),
Padding(padding: EdgeInsets.only(top:39),
  child:   Align(alignment: Alignment.topLeft,
  
    child: Text("Address Label(Optional)",
    style: TextStyle(
        fontSize: 16,
    ),
    ),
    ),
),
Row(children: [
  Checkbox(checkColor: Colors.white,  
                        activeColor: Color(0xffCB3940),  
                        value: (selected==1) ? true : false,  
                        onChanged: (bool value) {  
                          setState(() {  
                            selected=1;  
                          });  
                        },  
                      ),  
                      Text("Home",
                      style: TextStyle(fontSize: 14,)),
                      
],),
         Row(children:[
           Checkbox(checkColor: Colors.white,  
                        activeColor: Color(0xffCB3940),  
                        value: (selected==2) ? true : false,  
                        onChanged: (bool value) {  
                          setState(() {  
                            selected=2;  
                          });  
                        },  
                      ),  
                      Text("Work",
                      style: TextStyle(fontSize: 14,))
         ]),
         Row(children: [
            Checkbox(checkColor: Colors.white,  
                        activeColor: Color(0xffCB3940),  
                        value: (selected==3)?true:false,
                        onChanged: (bool value) {  
                          setState(() {  
                            selected=3; 
                          });  
                        },  
                      ),
                
                         Expanded(child: TextField(decoration:InputDecoration(
                           hintText: "Other"
                           ),
                           style: TextStyle(fontSize: 14),))
                       ],),
                       Padding(padding: EdgeInsets.only(top:39),
                                                child: Align(alignment: Alignment.topLeft,
                           child: Text("Deliver to ",
                           style:TextStyle(fontSize: 16) ,
                           )),
                       ),
          Padding(padding: EdgeInsets.only(top:16),
                      child: Row(children:[
               Checkbox(checkColor: Colors.white,
                 activeColor: Color(0xffCB3940),
                          value: deliveryselevted==1?true:false,  
                          onChanged: (bool value) {  
                            setState(() {  
               deliveryselevted = 1;  
                            });  
                          },  
                        ),  
                      Text("Deliver to Door")
            ]),
          ),
          Row(children:[
           Checkbox(checkColor: Colors.white,
                 activeColor: Color(0xffCB3940),
                          value: deliveryselevted==2?true:false,  
                          onChanged: (bool value) {  
                            setState(() {  
               deliveryselevted=2 ; 
                            });  
                          },  
                        ),  
                      Text("Pickup Outside") 
          ]),
          Padding(padding: EdgeInsets.only(top: 110),
                      child: ButtonTheme(minWidth: double.infinity,
                      height: 48,
              child: RaisedButton(
                
                onPressed:  (){} , 
              color: _name.text.isNotEmpty && _mobileNo.text.isNotEmpty && _address.text.isNotEmpty && _notes.text.isNotEmpty  ? Color(0xffCB3940) : Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Text("Confirm",
             style: TextStyle(fontSize: 18,color: Colors.white), ),)),
          )
         ],
         ),
              ),
       ),
     ),
    );
  }
}