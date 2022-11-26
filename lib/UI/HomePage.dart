import 'package:englisherr/UI/DetailLevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexagon/hexagon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff3B4A4A),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 210),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/icon/fire.svg',
                    width: 25,
                    height: 25,),
                  onPressed: () {
                    // sabar bang insyaallah nanti di hubungin ke page score
                  },
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Text("Score", style: TextStyle(fontSize: 15, fontFamily: "IBMPlexSerif")),
                      SizedBox(height: 2,),
                      Text("7.234", style: TextStyle(fontSize: 15, fontFamily: "IBMPlexSerif"))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 17),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/icon/beating-heart.svg',
                    width: 25,
                    height: 25,),
                  onPressed: () {
                    // sabar bang insyaallah nanti di hubungin ke page nyawa
                  },
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text("5",style: TextStyle(fontSize: 25, fontFamily: "IBMPlexSerif"))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailLevel())
                        );
                      },
                      child: new RotationTransition(
                          turns: new AlwaysStoppedAnimation(90 / 360),
                        child: HexagonWidget.flat(
                          width: 115,
                          height: 115,
                          color: Color(0xff3B4A4A),
                          cornerRadius: 5,
                          padding: 4.0,
                          child: new RotationTransition(
                            turns: new AlwaysStoppedAnimation(-90 / 360),
                            child:  Text('Introduction',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Writing',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 65,),
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Speaking',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(

                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Level 1',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                          onTap: (){

                          },
                          child: new RotationTransition(
                            turns: new AlwaysStoppedAnimation(90 / 360),
                            child: HexagonWidget.flat(
                              width: 115,
                              height: 115,
                              color: Color(0xff3B4A4A),
                              cornerRadius: 5,
                              padding: 4.0,
                              child: new RotationTransition(
                                turns: new AlwaysStoppedAnimation(-90 / 360),
                                child:  Text('Vocabulary',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                              ),
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 65),
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                          onTap: (){

                          },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text(' Speaking\nExcercises',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Level 2',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Foods',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 65),
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Animals',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Level 3',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('Plural Word',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 65),
                  Column(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: InkWell(
                            onTap: (){

                            },
                            child: new RotationTransition(
                              turns: new AlwaysStoppedAnimation(90 / 360),
                              child: HexagonWidget.flat(
                                width: 115,
                                height: 115,
                                color: Color(0xff3B4A4A),
                                cornerRadius: 5,
                                padding: 4.0,
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-90 / 360),
                                  child:  Text('   Declare\nOwnership',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
