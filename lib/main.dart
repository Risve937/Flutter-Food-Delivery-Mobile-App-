import 'package:flutter/material.dart';
import 'package:quickbitefdapp/pages/CartPage.dart';
import 'package:quickbitefdapp/pages/HomePage.dart';
import 'package:quickbitefdapp/pages/ItemPage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quick Byte",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFFBDBDBD)  ,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "CartPage" : (context) => CartPage(),
        "ItemPage" : (context) => ItemPage(),


      },
    );
  }
}
