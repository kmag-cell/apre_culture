import 'package:apre_culture/widgets/appbar.dart';
import 'package:apre_culture/widgets/menu.dart';
import 'package:apre_culture/pages/recommandation/recommandation1.dart';
import 'package:apre_culture/widgets/button.dart';
import 'package:apre_culture/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';

class RecommandationPage extends StatefulWidget {
  const RecommandationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RecommandationPageState();
  }
}

class _RecommandationPageState extends State<RecommandationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Cultures"),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.recommend_outlined,
                      size: 80,
                      color: Color.fromARGB(255, 145, 132, 132),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Recommandation Culture',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Veillez selectionner les caract??ristiques de votre parcelle:",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    DropdownWidget(text: "Azote"),
                                    const SizedBox(height: 20),
                                    DropdownWidget(text: "Potassium"),
                                    const SizedBox(height: 20),
                                    DropdownWidget(text: "Phosphore"),
                                    const SizedBox(height: 20),
                                    DropdownWidget(text: "Temp??rature"),
                                    const SizedBox(height: 20),
                                    DropdownWidget(text: "Ph"),
                                    const SizedBox(height: 20),
                                    ButtonWidget(
                                      text: "Pr??diction",
                                      link: const Recommandation1Page(),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
