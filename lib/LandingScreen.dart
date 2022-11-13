import 'package:englisherr/loginInput.dart';
import 'package:englisherr/signupInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A6363),
      body: Center(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),

              //Image

              Container(
                child: Image.asset("assets/icon/englisherr-logo.png",height: 200,width: 200,),
              ),
              SizedBox(height: 30,),

              //Text

              Container(
               child: Text("Already have an account?",style: TextStyle(color: Colors.white,fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.bold, fontSize: 25.0)),
              ),
               Container(
               child: Text("Continue your journey!",style: TextStyle(color: Colors.white,fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.normal, fontSize: 20.0)),
              ),
              SizedBox(height: 35,),

              //Button

              Container(
                height: 100,
                width: 280,
                child: Stack(
                  
                  children: [
                    Card(
                      elevation: 20,
                      color: Color(0xff79BFBF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
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
                    )
                  ],
                
                ),
              ),

              SizedBox(height: 55,),

              //Divider

              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:160.0,
                      color:Colors.white,),),
                      Text("OR",style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 18.0)),
                       Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:160.0,
                      color:Colors.white,),),
                  ],
                ),
              ),

              SizedBox(height: 32,),

              Text("Begin your journey",style: TextStyle(color: Colors.white,fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.bold, fontSize: 25.0)),

              SizedBox(height: 32,),

              //button

              Container(
                height: 100,
                width: 280,
                child: Stack(
                  
                  children: [
                    Card(
                      elevation: 20,
                      color: Color(0xff4A6363),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(width: 6, color: Color(0xff79BFBF))
                      ),
                      child: new InkWell(
                      onTap: () {
                        Get.to(() => SignupInput(),transition: Transition.rightToLeft, duration: Duration(seconds: 1));
                      }
                    ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("SIGN UP",style: TextStyle(color: Color(0xff79BFBF), fontWeight: FontWeight.bold, fontSize: 22.0))
                    )
                  ],
                
                ),
              ),
            ],
          ),
    )
    )
    );
  }
}