import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailLevel extends StatefulWidget {
  const DetailLevel({Key? key}) : super(key: key);

  @override
  State<DetailLevel> createState() => _DetailLevelState();
}

class _DetailLevelState extends State<DetailLevel> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  final double MAX_PAGE = 4;
  late double currentValue;
  @override
  void initState() {
    currentValue = 1 / MAX_PAGE;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 90,
            color: Colors.white,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                //make progress bar with button back
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/icon/close-outline.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: 26,
                                width: constraints.maxWidth * currentValue,
                                decoration: BoxDecoration(
                                  color: Color(0xff91FF8E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: SvgPicture.asset('assets/icon/beating-heart.svg',
                        width: 24,
                        height: 24,),
                      onPressed: () {
                        // sabar bang insyaallah nanti di hubungin ke page nyawa
                      },
                    ),
                    Column(
                      children: [
                        Text("5",style: TextStyle(fontSize: 26, fontFamily: "IBMPlexSerif"))
                      ]
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                print(index);
                setState(() {
                  currentValue = (index + 1) / MAX_PAGE;
                });
              },
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "How to say " + '"Bread"',
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 24,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          height: 135,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                onPressed: () {
                                  //make function to record voice
                                },
                                icon: SvgPicture.asset('assets/icon/mic-outline.svg',
                                  width: 70,
                                  height: 70,
                                  color: Color(0xff3B4A4A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 130,
                          color: Color(0xff3B4A4A).withOpacity(0.5),
                        ),
                        Container(
                          height: 70,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Press the microphone",
                                style: TextStyle(
                                    color: Color(0xff3B4A4A),
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "to start talking",
                                style: TextStyle(
                                    color: Color(0xff3B4A4A),
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        //make outline button
                        SizedBox(
                          height: 170,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "Check",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "How to say " + '"Bird"',
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 24,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          height: 135,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: IconButton(
                                onPressed: () {
                                  //make function to record voice
                                },
                                icon: SvgPicture.asset('assets/icon/mic-outline.svg',
                                  width: 70,
                                  height: 70,
                                  color: Color(0xff3B4A4A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 130,
                          color: Color(0xff3B4A4A).withOpacity(0.5),
                        ),
                        Container(
                          height: 70,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Press the microphone",
                                style: TextStyle(
                                    color: Color(0xff3B4A4A),
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "to start talking",
                                style: TextStyle(
                                    color: Color(0xff3B4A4A),
                                    fontSize: 15,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        //make outline button
                        SizedBox(
                          height: 170,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "Check",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Translate this sentence",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 24,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        //make button with outline
                        SizedBox(
                          height: 120,
                        ),
                        Row(
                          children: [
                            //make button with outline
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                  color: Color(0xff3B4A4A).withOpacity(0.5),
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/icon/volume-outline.svg',
                                    width: 30,
                                    height: 30,
                                    color: Color(0xff3B4A4A),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Dia minum",
                                    style: TextStyle(
                                        color: Color(0xff3B4A4A),
                                        fontSize: 18,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 2,
                          width: 370,
                          color: Color(0xff3B4A4A),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 2,
                          width: 370,
                          color: Color(0xff3B4A4A),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                  color: Color(0xff3B4A4A),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "he",
                                  style: TextStyle(
                                      color: Color(0xff3B4A4A),
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                  color: Color(0xff3B4A4A),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "drinking",
                                  style: TextStyle(
                                      color: Color(0xff3B4A4A),
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                  color: Color(0xff3B4A4A),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "drinks",
                                  style: TextStyle(
                                      color: Color(0xff3B4A4A),
                                      fontSize: 18,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "drunk",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "Check",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "How to say",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 24,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '"Pria itu memakan apel"',
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 24,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 180,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "The man eats the apple",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "The boy eats the apple",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "The boys eats the apple",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 250,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Color(0xff3B4A4A).withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _controller.animateToPage(0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              "Check",
                              style: TextStyle(
                                  color: Color(0xff3B4A4A),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
