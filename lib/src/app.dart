import 'package:dew_project/src/pages/home/home_page.dart';
import 'package:dew_project/src/pages/home/my_job.dart';
import 'package:dew_project/src/pages/login/login_page.dart';
import 'package:dew_project/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}