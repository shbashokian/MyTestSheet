import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/view/inner_screen.dart';
import 'package:my_test_sheet/view/profile_screen.dart';
import 'package:my_test_sheet/view/register_intro.dart';

class main_screen extends StatelessWidget {
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.splashBg,
        body: Column(
          children: [
            Container(
              //color: Colors.yellow,
              height: sizeH / 2,
              child: Stack(
                children: [
                  //Top Image Header
                  const Image(
                    image: AssetImage('assets/image/top.png'),
                    width: double.infinity,
                  ),
                  //Center Button
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: sizeW,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text('Scan Test Results Button'),
                              ));
                            },
                            child: Container(
                                width: sizeW / 3,
                                height: sizeW / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 7,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment(0, 1),
                                      colors: <Color>[
                                        Color.fromARGB(255, 210, 208, 212),
                                        Color.fromARGB(255, 223, 54, 25),
                                      ],
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      color: Colors.white,
                                      border: Border.all(color: Color.fromARGB(255, 215, 215, 215), width: 10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.medical_information_outlined,
                                      color: Color.fromARGB(229, 41, 37, 37),
                                      size: 65,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Scan Test Results",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  //Info Button --- TopLeft
                  Positioned(
                    left: 10,
                    top: 10,
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('About Us Button'),
                        ));
                      },
                      child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment(0, 1),
                                colors: <Color>[
                                  Color.fromARGB(255, 210, 208, 212),
                                  Color.fromARGB(255, 223, 54, 25),
                                ],
                              )),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), color: Colors.red[700], border: Border.all(color: const Color.fromARGB(167, 255, 255, 255), width: 2)),
                              child: Icon(
                                Icons.question_mark,
                                color: Color.fromARGB(210, 255, 255, 255),
                                size: 35,
                              ),
                            ),
                          )),
                    ),
                  ),
                  //Share Button --- TopRight
                  Positioned(
                    right: 10,
                    top: 10,
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Share Button'),
                        ));
                      },
                      child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment(0, 1),
                                colors: <Color>[
                                  Color.fromARGB(255, 210, 208, 212),
                                  Color.fromARGB(255, 223, 54, 25),
                                ],
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), color: Colors.red[700], border: Border.all(color: const Color.fromARGB(167, 255, 255, 255), width: 2)),
                              child: Icon(
                                Icons.share,
                                color: const Color.fromARGB(210, 255, 255, 255),
                                size: 35,
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Medical Tests Button'),
                          ));
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.medication_liquid_sharp,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Medical Tests",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Checkups Button'),
                          ));
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.local_hospital_outlined,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Checkups",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Test Info Button'),
                          ));
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.info_outline_rounded,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Test Info",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterIntro()),
                          );
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.settings,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          selectedMenu = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => inner(data: selectedMenu)),
                          );
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.newspaper,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Medical Articles",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          selectedMenu = 1;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => inner(data: selectedMenu)),
                          );
                        },
                        child: Container(
                          width: sizeW / 3.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: sizeW / 3.7,
                                  height: sizeW / 3.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          myColors.splashBg,
                                          Colors.white,
                                        ],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white,
                                        border: Border.all(color: Color.fromARGB(189, 239, 239, 239), width: 10),
                                      ),
                                      child: const Icon(
                                        Icons.account_box_outlined,
                                        color: Color.fromARGB(229, 41, 37, 37),
                                        size: 50,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "User Profile",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
