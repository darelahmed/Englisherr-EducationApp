import 'package:email_validator/email_validator.dart';
import 'package:englisherr/loadingScreen.dart';
import 'package:englisherr/LandingScreen.dart';
import 'package:englisherr/loginTaker.dart';
import 'package:englisherr/signupInput.dart';
import 'package:englisherr/splashscreen.dart';
import 'package:englisherr/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
                    title: Text(''),// You can add title here
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios, color: Color(0xff4A6363)),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    backgroundColor: Colors.blue.withOpacity(0), //You can make this transparent
                    elevation: 0.0, //No shadow
                  ),
      body:SingleChildScrollView(
        child: Center(
          child: Form(
             key: formkey,
          child: Column(
            children: [
              
              SizedBox(height:100),

               Container(
               child: Text("LOGIN",style: TextStyle(color: Color(0xff4A6363),fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.bold, fontSize: 25.0)),
              ),
              SizedBox(height: 50,),

              //textField

              Container(
                width: 330,
                child: TextFormField(
                  controller: emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Email",
                    fillColor: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) => 
                        email != null && !EmailValidator.validate(email)
                        ? 'Enter a valid email'
                        : null,
                ),
              ),
              SizedBox(height: 40,),

              //TextField

              Container(
                width: 330,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true ,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Password",
                    fillColor: Colors.white),
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value.length < 6
                    ? 'Enter min. 6 Characters'
                    : null,
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
                      color: Color(0xff4A6363),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(width: 6, color: Color(0xff53887F))
                      ),
                      child: new InkWell(
                      onTap: () => {
                        signIn(),
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
                      color:Color(0xff4A6363),),),
                      Text("or login with",style: TextStyle(color: Color(0xff4A6363), fontWeight: FontWeight.normal, fontSize: 18.0)),
                      Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:120.0,
                      color:Color(0xff4A6363),),),
                  ],
                ),
              ),
               Container(
                child: SizedBox(height: 210),
              ),
              RichText(
                text:TextSpan(
                  style: TextStyle(color: Color(0xff4A6363), fontWeight: FontWeight.normal, fontFamily: "IBMPlexSerif",fontSize: 20),
                  text: 'Dont have account?',
                  children:[ TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.off(()=> SignupInput(), transition: Transition.leftToRight,duration: Duration(seconds: 1)) ,
                    text: 'Sign Up',
                    style: TextStyle(decoration: TextDecoration.underline, color: Color.fromARGB(255, 105, 198, 167), fontSize: 20, fontFamily: "IBMPlexSerif", fontWeight: FontWeight.bold,)
                  )
                  ]
                )
              ),
              SizedBox(height: 30,)

            ],
          ),
          ),
         
        ) ,
        )
    );
  }
  Future signIn() async{
    final isValid = formkey.currentState!.validate();
    if(!isValid) return;

    try{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text.trim(), 
    password: passwordController.text.trim(),
    );
    Get.to(()=> loading(),transition: Transition.fade,duration: Duration(milliseconds: 500));
    }on FirebaseAuthException catch(e){
       print(e);

      Utils.showSnackBar(e.message);
    }


}
}

