import 'package:flutter/material.dart';

import 'package:expenses_master/pages/introduction_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: IntroductionPage(),
    );
  }
}