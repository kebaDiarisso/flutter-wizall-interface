import 'package:flutter/material.dart';
import 'package:wizall_interface/pages/credit_telephonique/credit_telephonique.dart';
import 'package:wizall_interface/pages/transfers/transfertsPage.dart';

import 'pages/payement/payementPage.dart';
import 'pages/retrait/retrait.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var Solde = "Mon Solde";
  var ValeurSolde = "1000";

  handleClick(){
    Solde = ValeurSolde;
    print(Solde);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 47, 180, 204),
            title: const Text("Mon Solde"),
          //  title: TextButton(onPressed: (){
          //    handleClick();
          //  }, child: Text(Solde)),
            actions: [Image.asset("wizall_money.jpeg")]),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFF50B5C7),
                  image: DecorationImage(
                      image: AssetImage(
                    "wizall_money.jpeg",
                  )),
                ),
                child: Center(
                    //  child: Expanded(child: Text("data")),
                    ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Accueil'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.history,
                ),
                title: const Text('Historique'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.warning,
                ),
                title: const Text('Transaction en attente'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.map,
                ),
                title: const Text('Trouver un Agent'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text('Mon Compte'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.warning_amber,
                ),
                title: const Text('Service Client'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text('Déconnexion'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            color: Color(0xFF50B5C7),
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "ImageNewsGet.png",
            ),
          ),
          Container(
            color: const Color(0xFF50B5C7),
            // margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 509,
            child: Expanded(
              child: GridView.count(
                primary: false,
                // padding: const EdgeInsets.all(2),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                childAspectRatio: 4.4 / 3,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreditTelephoneique()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.refresh,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Crédit téléphonique'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransfertsPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.send,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Transferts'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PayementPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.monetization_on,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Paiements'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RetraitPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.money_outlined,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Faire un retrait'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Marchand et collecte'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF50B5C7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.attach_money_outlined,
                          color: Color(0xFFf1bd2e),
                          size: 75.0,
                        ),
                        Text('Banques'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
