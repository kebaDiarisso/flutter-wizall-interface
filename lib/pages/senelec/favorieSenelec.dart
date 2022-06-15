import 'package:flutter/material.dart';

class FavoriSenelec extends StatefulWidget {
  const FavoriSenelec({Key? key}) : super(key: key);

  @override
  State<FavoriSenelec> createState() => _FavoriSenelecState();
}

class _FavoriSenelecState extends State<FavoriSenelec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 47, 180, 204),
            //title: Image.asset("orange.png"),
            actions: [Image.asset("wizall_money.jpeg")],
            bottom: PreferredSize(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  // color: Color(0xFF50B5C7),
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text("Solde",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Consulter",
                          style: const TextStyle(
                              color: Color(0xFFf1bd2e),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                preferredSize: const Size.fromHeight(4.0)),
            flexibleSpace: Container(
                margin: const EdgeInsets.all(50),
                child: Image.asset(
                  "senelec.png",
                  height: 75,
                )),
          )),
      floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          child: new Icon(Icons.add),
         // backgroundColor: new Color(0xFFE57373),
          onPressed: () {}),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
