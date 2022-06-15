import 'package:flutter/material.dart';

class KeurArame extends StatefulWidget {
  const KeurArame({Key? key}) : super(key: key);

  @override
  State<KeurArame> createState() => _KeurArameState();
}

class _KeurArameState extends State<KeurArame> {
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
                // child: Image.asset(
                //   "free.png",
                //   height: 75,
                // )
                ),
          )),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Référence Client",
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Entrer le Montant (FCFA)",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Valider",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  // minimumSize: Size.fromHeight(40),
                  primary: (const Color(0xFFf1bd2e)),
                  minimumSize: const Size.fromHeight(50)),
            )
          ],
        ),
      ),
    );
  }
}
