import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wizall_interface/pages/ecoles/campusen.dart';
import 'package:wizall_interface/pages/ecoles/ecoleABilingue.dart';
import 'package:wizall_interface/pages/ecoles/keurArame.dart';

import '../ecoles/ansambleIsd.dart';
import '../ecoles/ansambleLfjm.dart';

class EcolesPage extends StatefulWidget {
  const EcolesPage({Key? key}) : super(key: key);

  @override
  State<EcolesPage> createState() => _EcolesPageState();
}

class _EcolesPageState extends State<EcolesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 180, 204),
          title: Text("Ecoles"),
          actions: [Image.asset("wizall_money.jpeg")]),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AnsambleLfjm()),
                      );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "ansamble.png",
                      height: 20,
                    ),
                    title: Text('ANSAMBLE - LFJM'),
                    trailing: Image.asset(
                      "point.png",
                      height: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AnsambleISD()),
                      );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "ansamble.png",
                      height: 20,
                    ),
                    title: Text('ANSAMBLE - ISD'),
                    trailing: Image.asset(
                      "point.png",
                      height: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EcoleBilingue()),
                      );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "eab.png",
                      height: 40,
                    ),
                    title: Text('     Ecole Actuelle Bilingue'),
                    trailing: Image.asset(
                      "point.png",
                      height: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Campusen()),
                      );
                  },
                  child: ListTile(
                    leading: Image.asset("campusen.webp",height: 30,),
                    title: Text('  Campusen'),
                    trailing: Image.asset(
                      "point.png",
                      height: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KeurArame()),
                      );
                  },
                  child: ListTile(
                  //  leading: Image.asset("campusen.webp",height: 30,),
                    title: Text('Keur Arame'),
                    trailing: Image.asset(
                      "point.png",
                      height: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }
}
