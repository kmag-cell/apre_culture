import 'package:apre_culture/pages/prediction/etape1.dart';
import 'package:apre_culture/widgets/appbar.dart';
import 'package:apre_culture/widgets/button.dart';
import 'package:apre_culture/widgets/dropdown.dart';
import 'package:apre_culture/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';

class Culture1Page extends StatefulWidget {
  const Culture1Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Culture1PageState();
  }
}

class _Culture1PageState extends State<Culture1Page> {
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
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  const Text(
                                    "Veillez entrer la superficie de votre parcelle",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  DropdownWidget(text: "Superficie"),
                                  const SizedBox(height: 20),
                                  ButtonWidget(
                                    text: "Demarrez votre culture",
                                    link: const Etape1Page(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
