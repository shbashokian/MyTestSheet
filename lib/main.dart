import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/view/first_page.dart';
import 'package:my_test_sheet/view/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: myColors.mainpageColor,
    statusBarIconBrightness: Brightness.dark,
    //systemNavigationBarColor: Color.fromARGB(255, 176, 22, 2),
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Farsi
      ],
      theme: ThemeData(fontFamily: 'vazir', textTheme: const TextTheme(headline1: TextStyle(fontFamily: 'vazir', fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white), bodyText1: TextStyle(fontFamily: 'vazir', fontSize: 13, fontWeight: FontWeight.w300), headline2: TextStyle(fontFamily: 'vazir', fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white), headline3: TextStyle(fontFamily: 'vazir', fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red), headline4: TextStyle(fontFamily: 'vazir', fontSize: 13, fontWeight: FontWeight.w300, color: Colors.green))),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
