import 'package:flutter/material.dart';

class SenelecPage extends StatefulWidget {
  const SenelecPage({Key? key}) : super(key: key);

  @override
  State<SenelecPage> createState() => _SenelecPageState();
}

class _SenelecPageState extends State<SenelecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 180, 204),
          title: Text("SENELEC"),
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const AnsambleLfjm()),
                    //   );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "senelec.png",
                      height: 20,
                    ),
                    title: Text('Payer votre facture'),
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const AnsambleISD()),
                    //   );
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "senelec.png",
                      height: 20,
                    ),
                    title: Text('Favoris Senelec'),
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
