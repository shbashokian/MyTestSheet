import 'package:flutter/material.dart';
import 'package:my_test_sheet/colors.dart';

class main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.splashBg,
        body: Center(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 200),
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(1000), bottomRight: Radius.circular(1000)), color: myColors.scafoldBg),
                  height: sizeH / 2,
                  width: double.infinity,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
