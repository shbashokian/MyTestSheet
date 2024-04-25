import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/my_strings.dart';

class RegisterIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    var textTheme = Theme.of(context).textTheme;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/image/doctor.svg",
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(textAlign: TextAlign.center, text: TextSpan(text: myStrings.welcome, style: textTheme.headline5)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "بزم بریم",
                    style: textTheme.headline1,
                  ),
                ),
                style: ButtonStyle(textStyle: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return textTheme.headline3;
                  }
                  return textTheme.headline1;
                }), backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return myColors.iconColors;
                  }
                  return myColors.splashBg;
                })),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
