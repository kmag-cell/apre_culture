import 'package:apre_culture/widgets/button.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:apre_culture/widgets/header.dart';
import 'package:apre_culture/pages/connexion/registration.dart';

class Registration1Page extends StatefulWidget {
  const Registration1Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Registration1PageState();
  }
}

class _Registration1PageState extends State<Registration1Page> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 5, color: Colors.white),
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      const BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20,
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.grey.shade300,
                                    size: 80.0,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey.shade700,
                                    size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Veuillez choisir votre lieu :',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CSCPicker(
                            showStates: true,
                            showCities: true,
                            flagState: CountryFlag.ENABLE,
                            dropdownDecoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 1)),

                            disabledDropdownDecoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: Colors.grey.shade300,
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 1)),

                            countrySearchPlaceholder: "Pays",
                            stateSearchPlaceholder: "État",
                            citySearchPlaceholder: "Ville",

                            countryDropdownLabel: "*Pays",
                            stateDropdownLabel: "*État",
                            cityDropdownLabel: "*Ville",

                            selectedItemStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),

                            dropdownHeadingStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),

                            dropdownItemStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),

                            dropdownDialogRadius: 30.0,

                            searchBarRadius: 30.0,

                            ///triggers once country selected in dropdown
                            // onCountryChanged: (value) {
                            //   setState(() {
                            //     ///store value in country variable
                            //     countryValue = value;
                            //   });
                            // },

                            ///triggers once state selected in dropdown
                            // onStateChanged: (value) {
                            //   setState(() {
                            //     ///store value in state variable
                            //     stateValue = value!;
                            //   });
                            // },

                            ///triggers once city selected in dropdown
                            // onCityChanged: (value) {
                            //   setState(() {
                            //     ///store value in city variable
                            //     cityValue = value!;
                            //   });
                            // },
                          ),
                        ],
                      )),
                  const SizedBox(height: 20.0),
                  ButtonWidget(
                    text: "Suivant",
                    link: const RegistrationPage(),
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
