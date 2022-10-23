import 'package:englisherr/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A6363),
      appBar: AppBar(
                    title: Text(''),// You can add title here
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    backgroundColor: Colors.blue.withOpacity(0), //You can make this transparent
                    elevation: 0.0, //No shadow
                  ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              
              SizedBox(height:100),

               Container(
               child: Text("LOGIN",style: TextStyle(color: Colors.white,fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.bold, fontSize: 25.0)),
              ),
              SizedBox(height: 70,),

              //textField

              Container(
                width: 330,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Email",
                    fillColor: Colors.white),
                ),
              ),
              SizedBox(height: 40,),

              //TextField

              Container(
                width: 330,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Password",
                    fillColor: Colors.white),
                ),
              ),

              SizedBox(height: 40,),

              //button

              Container(
                height: 100,
                width: 200,
                child: Stack(
                  
                  children: [
                    Card(
                      elevation: 20,
                      color: Color(0xff79BFBF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(width: 6, color: Color(0xff53887F))
                      ),
                      child: new InkWell(
                      onTap: () {
                       Get.to(() => LoginInput(),transition: Transition.rightToLeft, duration: Duration(seconds: 1));
                       
                      }
                    ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("LOGIN",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0))
                    ),
                    
                  ],
                
                ),
              ),
              SizedBox(height: 40,),

             //divider   

              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:120.0,
                      color:Colors.white,),),
                      Text("or login with",style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 18.0)),
                      Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:120.0,
                      color:Colors.white,),),
                  ],
                ),
              ),

            ],
          ),
         
        ) ,
        )
    );
  }
}