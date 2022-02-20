
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropdownWidget extends StatelessWidget {
  final String? text;
  String? _selectedValue;
  List<String> listOfValue = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '9',
    '10',
  ];

  DropdownWidget({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      value: _selectedValue,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      isExpanded: true,
      hint: Text(
        text!,
        style: const TextStyle(fontSize: 14),
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      buttonHeight: 50,
      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: listOfValue
          .map((String val) => DropdownMenuItem<String>(
                value: val,
                child: Text(
                  val,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Potassium.';
        }
        return null;
      },
      onSaved: (value) {},
    );
  }
}
