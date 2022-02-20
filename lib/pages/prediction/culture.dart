import 'package:apre_culture/widgets/appbar.dart';
import 'package:apre_culture/widgets/button.dart';
import 'package:apre_culture/widgets/menu.dart';
import 'package:apre_culture/pages/prediction/culture1.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';

class CulturePage extends StatefulWidget {
  const CulturePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CulturePageState();
  }
}

class _CulturePageState extends State<CulturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Aides"),
      drawer: const MenuWidget(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/tomate.jpg',
                      height: 100,
                      width: 120,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Tomate',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    color: const Color.fromARGB(240, 210, 215, 218),
                    elevation: 10,
                    margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: SizedBox(
                              child: Image.asset('assets/icons/02d.png')),
                          title: const Text("Méteo"),
                        ),
                        const Divider(
                          height: 5,
                          thickness: 2,
                          indent: 20,
                          color: Color.fromARGB(244, 246, 248, 247),
                        ),
                        ListTile(
                          leading: SizedBox(
                              child: Image.asset('assets/icons/09d.png')),
                          title: const Text("Température"),
                          subtitle: const Text("Humidité"),
                        ),
                      ],
                    ),
                  ),
                  Card(
                      child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(15),
                          child: const Text(
                              "La tomate est une plante annuelle qui craint le froid et nécessite une bonne fertilisation. Cette culture est exigeante en main d’œuvre. a croissance de la plante sera optimale avec des températures nocturnes de 15 à 17°C et des températures diurnes de 18 à 24°C. La période optimale pour cultiver la tomate est Juillet-Aout. ")),
                      ButtonWidget(
                        text: "suivant",
                        link: const Culture1Page(),
                      ),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
