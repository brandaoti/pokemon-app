import 'package:flutter/material.dart';
import 'pages/home.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokemon app',
      home: Home(),
    );
  }
}
