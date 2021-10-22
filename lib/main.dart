//packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//pages, widgets & routes
import 'package:address_update_system/view/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aadhar Address Update System',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
        backgroundColor: Colors.white,
        primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
      ),
      home: LoginView(),
    );
  }
}
