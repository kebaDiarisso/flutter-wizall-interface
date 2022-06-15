import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:wizall_interface/pages/payement/ecoles.dart';
import 'package:wizall_interface/pages/payement/tickets.dart';

import 'senelecPage.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({Key? key}) : super(key: key);

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 180, 204),
        title: Text("Paiements"),
        actions: [Image.asset("wizall_money.jpeg")],
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          childAspectRatio: 3 / 2.2,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TicketsPage()),
                      );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    CupertinoIcons.tickets_fill,
                    color: Color(0xFF50B5C7),
                    size: 70.0,
                  ),
                  Text(
                    "Tickets",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    CupertinoIcons.gamecontroller_alt_fill,
                    color: Color(0xFF50B5C7),
                    size: 70.0,
                  ),
                  Text(
                    "Jeux & Store",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EcolesPage()),
                      );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "ecole.png",
                    width: 80,
                    height: 65,
                  ),
                  Text(
                    "Ecoles",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SenelecPage()),
                      );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "senelec.png",
                width: 65,
                height: 65,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "woyofal.png",
                width: 90,
                height: 90,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "senEau.png",
                width: 150,
                height: 150,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "rapido.png",
                width: 65,
                height: 65,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "Oolu.png",
                width: 65,
                height: 65,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "der.png",
                width: 100,
                height: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "diobass.png",
                width: 100,
                height: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    CupertinoIcons.tv,
                    color: Color(0xFF50B5C7),
                    size: 70.0,
                  ),
                  Text(
                    "Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 234, 239, 249)),
              ),
              child:Image.asset(
                "touba.png",
                width: 65,
                height: 65,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
