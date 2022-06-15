import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wizall_interface/pages/credit_telephonique/freePage.dart';
import 'package:wizall_interface/pages/credit_telephonique/orangePage.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 180, 204),
          title: Text("Mes Tickets"),
          actions: [Image.asset("wizall_money.jpeg")]),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.tickets_fill,
                      color: Color(0xFF50B5C7),
                      size: 35.0,
                    ),
                    title: Text('Mes Tickets'),
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
                  onPressed: () {},
                  child: ListTile(
                    leading: Image.asset(
                      "lutte.png",
                      height: 40,
                      width: 40,
                    ),
                    title: Text('Combats de Lutte'),
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
