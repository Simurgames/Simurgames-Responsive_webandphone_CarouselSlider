import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/core/constants/color_constants.dart';
import 'package:web/core/extension/context_extension.dart';
import 'package:web/view/home/phone/phone_main.dart';
import 'package:web/view/home/web/web_main.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kişisel Web Sitem',
      home: Scaffold(
        backgroundColor: ColorConstants.instance.EbonyClay,
        body: Center(
            child :context.dynwidth(1) < 650 ? phone() : pc(),
        )));
  }
}









