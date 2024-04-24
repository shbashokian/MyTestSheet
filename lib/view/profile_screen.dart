import 'package:flutter/material.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/my_components.dart';
import 'package:my_test_sheet/my_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.sizeW,
    required this.sizeH,
    required this.textTheme,
  });

  final double sizeW;
  final double sizeH;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Image(
            image: AssetImage("assets/image/profileAvatar.png"),
            width: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.edit,
                color: myColors.iconColors,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                myStrings.editProfileAvatar,
                style: textTheme.headline3,
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "شهرام باشوکیان",
            style: textTheme.headline6,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "shahramb7@gmail.com",
            style: textTheme.headline5,
          ),
          const SizedBox(
            height: 60,
          ),
          DividerComponent(sizeW: sizeW),
          InkWell(
            onTap: () {},
            splashColor: myColors.iconColors,
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  myStrings.myFav,
                  style: textTheme.subtitle2,
                ),
              ),
            ),
          ),
          DividerComponent(sizeW: sizeW),
          InkWell(
            onTap: () {},
            splashColor: myColors.iconColors,
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  myStrings.logOut,
                  style: textTheme.subtitle2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
