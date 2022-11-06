// ignore_for_file: deprecated_member_use

import 'package:englisherr/AchievementPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff3B4A4A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: 250,
              child: Center(
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, fontFamily: "IBMPlexSerif"),
                ),
              )
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icon/settings-outline.svg',
                width: 30,
                height: 30,color: Colors.white),
            onPressed: (){
              // sabar bang insyaallah nanti di hubungin ke page settings
            },
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    width: 275,
                    height: 88,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Darrell Ahmed Galen",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 20,fontWeight: FontWeight.w600, fontFamily: "Montserrat"),),
                        Text("Beginner",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                        SizedBox(height: 7,),
                        Text("Join October 2022",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 12,fontWeight: FontWeight.w400, fontFamily: "Montserrat")),
                        SizedBox(height: 10,),
                        Text(user!.email!,style: TextStyle(color: Color(0xff3B4A4A), fontSize: 12,fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/image/profile.jpg'))
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 52,
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/icon/edit.svg',
                              width: 27,
                              height: 27,),
                            onPressed: () {

                            },
                            padding: EdgeInsets.only(bottom: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 2),
                child: Container(
                  height: 1,
                  width: 390,
                  color: Color(0xff435656).withOpacity(.5),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text("Statistic",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 20,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Color(0xff435656).withOpacity(.5),
                          ),
                        ),
                        child: Container(
                          width: 170,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icon/fire.svg',
                                width: 25,
                                height: 25,),
                              Text(" 7.234",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 20,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Color(0xff435656).withOpacity(.5),
                          ),
                        ),
                        child: Container(
                          width: 170,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(" Level : 3",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 20,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 14),
                child: Container(
                  height: 1,
                  width: 390,
                  color: Color(0xff435656).withOpacity(.5),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text("Achievement",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 20,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: Color(0xff435656).withOpacity(.5),
                      ),
                    ),
                    child: Container(
                      width: 350,
                      height: 343,
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/image/content.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Challenger",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Get 40 exp in challenge!",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 155,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xff435656).withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 0,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Color(0xff435656),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("0/40",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                height: 1,
                                width: 350,
                                color: Color(0xff435656).withOpacity(.5),
                              ),
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/image/content.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Smoldering",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Reach a series of 3 days",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 155,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xff435656).withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 55,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Color(0xffFFF732),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("1/3",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                height: 1,
                                width: 350,
                                color: Color(0xff435656).withOpacity(.5),
                              ),
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/image/content.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Wise Guy",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Get 100 exp",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 170,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xff435656).withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 0,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Color(0xff435656),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("0/100",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Container(
                                height: 1,
                                width: 350,
                                color: Color(0xff435656).withOpacity(.5),
                              ),
                            ),
                            Container(
                              width: 350,
                              height: 50,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const AchievementPage()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("See 8 more",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                    SizedBox(
                                      width: 167,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/icon/chevron-right-outline.svg',
                                          width: 30,
                                          height: 30,
                                          color: Color(0xff3B4A4A),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff435656).withOpacity(.5),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('HELP CENTER',style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                  onPressed: () {
                    // help center
                  },
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff435656).withOpacity(.5),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('SIGN OUT',style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w500, fontFamily: "Montserrat")),
                  onPressed: () => FirebaseAuth.instance.signOut(),
                ),
              ),
              SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
