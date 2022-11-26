import 'package:englisherr/UI/BottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AchievementPage extends StatefulWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  State<AchievementPage> createState() => _AchievementPageState();
}

class _AchievementPageState extends State<AchievementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B4A4A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Achievement',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Get 40 exp in Challenge!",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 60,
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Bachelor",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Clear 4 levels in 2 courses",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("0/4",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Champion",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Complete 3 levels to get 4.800 xp",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("0/3",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Sniper",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Complete 1 level without error",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("0/1",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Weekend Knight",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Complete one lesson\non Saturday and Sunday",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 0,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffE4E4E4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("0/2",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Color(0xff435656).withOpacity(.5),
                  ),
                ),
                child: Container(
                  width: 360,
                  height: 100,
                  padding: EdgeInsets.all(10),
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
                                Text("Photogenic",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Add your profile picture",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.w300, fontFamily: "Montserrat")),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffE4E4E4).withOpacity(.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 180,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xff79BF7C),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("1/1",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
