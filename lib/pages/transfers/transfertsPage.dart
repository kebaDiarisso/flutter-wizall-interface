import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class TransfertsPage extends StatefulWidget {
  const TransfertsPage({Key? key}) : super(key: key);

  @override
  State<TransfertsPage> createState() => _TransfertsPageState();
}

class _TransfertsPageState extends State<TransfertsPage> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'wizallMoneySenegal',
      'label': 'Wizall Money Sénégal',
    },
    {
      'value': 'adjiaMoneySenegal',
      'label': 'Adjia Money Senegal',
    },
    {
      'value': 'wizallMoneyMali',
      'label': 'Adjia Money Mali',
    },
    {
      'value': 'wizallMoneyCOteDivoir',
      'label': 'Wizall Money Cote D\'Ivoire',
    },
    {
      'value': 'wizallMoneyBurkina',
      'label': 'Wizall Money Burkina Faso',
    },
  ];

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
                          child: const Text("Solde",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Consulter",
                          style: TextStyle(
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
              child: const Icon(
                Icons.send,
                color: Color(0xFFf1bd2e),
                size: 75.0,
              ),
            ),
          )),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectFormField(
              type: SelectFormFieldType.dropdown, // or can be dialog
              initialValue: 'Pays',
              labelText: 'Pays',
              items: _items,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Numéro de Receveur",
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
