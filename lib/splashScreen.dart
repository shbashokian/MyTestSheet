import 'package:flutter/material.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_test_sheet/main_screen.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => main_screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return const SafeArea(
      child: Scaffold(
        backgroundColor: myColors.splashBg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/image/splashmain.png"),
                height: 200,
              ),
              SizedBox(
                height: 30,
              ),
              SpinKitThreeBounce(
                color: Colors.white,
                size: 30.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
