import 'package:flutter/material.dart';
import 'package:orange/homescreen.dart';
import 'package:orange/wellcome.dart';
import 'package:orange/widgets/bookinductionwidgets.dart';
import 'package:orange/widgets/infomativBoxWidgets.dart';

import 'loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Ui2(),
    );
  }
}
