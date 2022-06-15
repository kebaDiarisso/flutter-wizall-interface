import 'package:flutter/material.dart';
import 'package:wizall_interface/pages/credit_telephonique/freePage.dart';
import 'package:wizall_interface/pages/credit_telephonique/orangePage.dart';

import 'expressoPage.dart';
import 'promobilePage.dart';

class CreditTelephoneique extends StatefulWidget {
  const CreditTelephoneique({Key? key}) : super(key: key);

  @override
  State<CreditTelephoneique> createState() => _CreditTelephoneiqueState();
}

class _CreditTelephoneiqueState extends State<CreditTelephoneique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 180, 204),
          title: Text("Crédit Téléphonique"),
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
                          builder: (context) => const OrangePage()),
                    );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "orange.png",
                      height: 20,
                    ),
                    title: Text('Orange'),
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
                          builder: (context) => const FreePage()),
                    );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "free.png",
                      height: 20,
                      width: 35,
                    ),
                    title: Text('Free'),
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
                          builder: (context) => const ExpressoPage()),
                    );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "expresso.jpeg",
                      height: 20,
                    ),
                    title: Text('Expresso'),
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
                          builder: (context) => const PromobilePage()),
                    );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "promobile.png",
                      height: 20,
                      width: 40,
                    ),
                    title: Text('Promobile'),
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
            // ElevatedButton(
            //   onPressed: () {},
            //   child: ListTile(
            //     leading:Image.asset("free.png"),
            //     title: Text('Free'),
            //    // trailing: Icon(Icons.more_vert),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: ListTile(
            //     leading:Image.asset("expresso.png"),
            //     title: Text('Expresso'),
            //    // trailing: Icon(Icons.more_vert),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: ListTile(
            //     leading:Image.asset("promobile.png"),
            //     title: Text('Promobile'),
            //    // trailing: Icon(Icons.more_vert),
            //   ),
            // ),
            Container(
              //color: Colors.grey,
              width: MediaQuery.of(context).size.width,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
