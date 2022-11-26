import 'package:englisherr/loadingScreen.dart';
import 'package:englisherr/LandingScreen.dart';
import 'package:englisherr/loginInput.dart';
import 'package:englisherr/loginTaker.dart';
import 'package:englisherr/splashscreen.dart';
import 'package:englisherr/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

class SignupInput extends StatefulWidget {
  const SignupInput({super.key});

  @override
  State<SignupInput> createState() => _SignupInputState();
}

class _SignupInputState extends State<SignupInput> {
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
   final ConfirmPSController = TextEditingController();
   
  

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
              
              SizedBox(height:70),

               Container(
               child: Text("Sign Up",style: TextStyle(color: Color(0xff4A6363),fontFamily: 'IBMPlexSerif', fontWeight: FontWeight.bold, fontSize: 25.0)),
              ),
              SizedBox(height: 40,),

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

               Container(
                width: 330,
                child: TextFormField(
                  controller: ConfirmPSController ,
                  obscureText: true ,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Confirm Password",
                    fillColor: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value != null && value != passwordController.text
                    ? 'Incorrect password'
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
                        signUp(),
                        
                      }
                       
                      
                    ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Sign Up",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0))
                    ),
                    
                  ],
                
                ),
              ),
              SizedBox(height: 40,),

             //divider   

              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:100.0,
                      color:Color(0xff4A6363),),),
                      Text("or sign up with",style: TextStyle(color: Color(0xff4A6363), fontWeight: FontWeight.normal, fontSize: 18.0)),
                      Padding(
                      padding:EdgeInsets.symmetric(horizontal:10.0),
                      child:Container(
                      height:1.0,
                      width:100.0,
                      color:Color(0xff4A6363),),),
                  ],
                ),
              ),
              Container(
                child: SizedBox(height: 150),
              ),
              RichText(
                text:TextSpan(
                  text: 'Already have account?',
                  style: TextStyle(color: Color(0xff4A6363), fontWeight: FontWeight.normal, fontFamily: "IBMPlexSerif",fontSize: 20),
                  children:[ TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.off(()=> LoginInput(),transition: Transition.rightToLeft,duration: Duration(seconds: 1)) ,
                    text: 'Login',
                    style: TextStyle(decoration: TextDecoration.underline, color: Color.fromARGB(255, 105, 198, 167), fontSize: 20, fontFamily: "IBMPlexSerif", fontWeight: FontWeight.bold,)
                  )
                  ]
                )
              ),
              SizedBox(height: 30,)

            ],
          ),
          )
         
        ) ,
        
        )
    );
  }
  Future signUp() async{
    final isValid = formkey.currentState!.validate();
    if(!isValid) return;

    

  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
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




