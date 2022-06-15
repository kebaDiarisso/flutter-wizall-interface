import 'package:flutter/material.dart';
import 'homePage.dart';
import 'pages/payement/senelecPage.dart';
import 'pages/senelec/favorieSenelec.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FavoriSenelec(),
    );
  }
}
