import 'package:dreamcatcher_demo/bannerslide.dart';
import 'package:dreamcatcher_demo/constants.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dearmcatcher Demo',
      theme: ThemeData(
        fontFamily: "Kanit",
        scaffoldBackgroundColor: kdcColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        primaryColor: kdcColor,
      ),
      home: BannerSlide(),
    );
  }
}
