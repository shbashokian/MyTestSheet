import 'package:flutter/material.dart';
import 'package:my_test_sheet/colors.dart';

class main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: myColors.splashBg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "خوش آمدید",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
