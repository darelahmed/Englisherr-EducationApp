import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff3B4A4A),
            title: Center(
                child: Text(
                  'Challenge',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "IBMPlexSerif"
                  ),
                ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'TARGET',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "IBMPlexSerif"
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'BADGE',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "IBMPlexSerif"
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 19),
                            child: Text(
                              'Daily Missions',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff3B4A4A),
                                  fontFamily: "Montserrat"
                              ),
                            ),
                          ),
                          //svg picture clock
                          Padding(
                            padding: const EdgeInsets.only(left: 86, top: 19, right: 5),
                            child: SvgPicture.asset('assets/icon/clock.svg',
                                width: 30,
                                height: 30,
                                color: Color(0xff3B4A4A)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 19, top: 19),
                            child: Text(
                              '23 hours',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff3B4A4A),
                                  fontFamily: "Montserrat",
                              ),
                            ),
                          ),
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
                          width: 360,
                          height: 100,
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
                                        Text("Get 200 exp",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
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
                                                color: Color(0xff435656).withOpacity(.5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 80,
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
                                            Text("80/200",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
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
                          width: 360,
                          height: 100,
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
                                        Text("Complete 2 levels\nwithout any mistakes",style: TextStyle(color: Color(0xff3B4A4A),fontSize: 17,fontWeight: FontWeight.w600, fontFamily: "Montserrat")),
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
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get your first badge!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3B4A4A),
                            fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Complete challenges every month",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3B4A4A),
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        "to earn exclusive badges",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3B4A4A),
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}