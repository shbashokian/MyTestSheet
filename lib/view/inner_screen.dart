import 'package:flutter/material.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/view/blog_screen.dart';
import 'package:my_test_sheet/view/profile_screen.dart';

class inner extends StatefulWidget {
  final int data;
  inner({required this.data});

  @override
  State<inner> createState() => _inner();
}

class _inner extends State<inner> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    var textTheme = Theme.of(context).textTheme;

    print('data=' + widget.data.toString());
    print('index=' + selectedIndex.toString());

    List<Widget> innerScreenWidgets = [BlogScreen(sizeW: sizeW, sizeH: sizeH, textTheme: textTheme), ProfileScreen(sizeW: sizeW, sizeH: sizeH, textTheme: textTheme)];

    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.mainpageColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: myColors.scafoldBg,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: myColors.iconColors,
                  size: sizeH / 20,
                ),
                Image(
                  image: const AssetImage('assets/image/logo_top.png'),
                  height: sizeH / 14,
                ),
                Icon(
                  Icons.search,
                  color: myColors.iconColors,
                  size: sizeH / 20,
                )
              ],
            ),
          ),
        ),
        body: Stack(children: [
          innerScreenWidgets[selectedIndex != -1 ? selectedIndex : widget.data],
          BottomNav(
            sizeH: sizeH,
            changeScreen: (int value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
        ]),
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.sizeH, required this.changeScreen});

  final double sizeH;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: sizeH / 10,
        width: double.infinity,
        decoration: const BoxDecoration(gradient: LinearGradient(colors: gradientColors.buttomNavBackground, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: sizeH / 8,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18)), gradient: LinearGradient(colors: gradientColors.buttonNav)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (() => changeScreen(0)),
                    icon: const Icon(
                      Icons.article_rounded,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: (() => changeScreen(1)),
                    icon: const Icon(
                      Icons.supervisor_account,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: const Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
