import 'package:apre_culture/widgets/appbar.dart';
import 'package:apre_culture/widgets/card.dart';
import 'package:apre_culture/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';

class Recommandation1Page extends StatefulWidget {
  const Recommandation1Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Recommandation1PageState();
  }
}

class _Recommandation1PageState extends State<Recommandation1Page> {
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
                            "Les cultures adaptées à votre sol sont:",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(height: 10),
                        CardWidget(
                          image: Image.asset(
                            'assets/images/tomate.jpg',
                          ),
                          text: const Text('Tomate'),
                        ),
                        const SizedBox(height: 10),
                        CardWidget(
                          image: Image.asset(
                            'assets/images/piment.jpg'),
                          text: const Text('Piment'),
                        ),
                        const SizedBox(height: 10),
                        CardWidget(
                          image: Image.asset(
                            'assets/images/oignon.jpg',
                          ),
                          text: const Text('Oignon'),
                        ),
                        const SizedBox(height: 10),
                        CardWidget(
                          image: Image.asset(
                            'assets/images/aubergine.jpg',
                          ),
                          text: const Text('Aubergine'),
                        ),
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
