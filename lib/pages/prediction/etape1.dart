import 'package:apre_culture/widgets/appbar.dart';
import 'package:apre_culture/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Etape1Page extends StatefulWidget {
  const Etape1Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Etape1PageState();
  }
}

class _Etape1PageState extends State<Etape1Page> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Aides"),
      drawer: const MenuWidget(),
      body: SingleChildScrollView(
        child: Stack(children: [
          const SizedBox(
            height: 100,
            child: HeaderWidget(100, false, Icons.house_rounded),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(children: [
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      'Tomate',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 14.0,
                      animation: true,
                      percent: 0.1,
                      center: const Text(
                        "5%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ]),
            ]),
          ),
        ]),
      ),
    );
  }
}
