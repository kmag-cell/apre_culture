import 'package:apre_culture/utils/theme_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  final dynamic link;
  final String? text;

  final _formKey = GlobalKey<FormState>();

  ButtonWidget({Key? key, this.link, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
        }
      },
      child: Container(
        decoration: ThemeHelper().buttonBoxDecoration(context),
        child: ElevatedButton(
          style: ThemeHelper().buttonStyle(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Text(
              text!.toUpperCase(),
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          onPressed: () {
            // //After successful login we will redirect to profile page. Let's create profile page now
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => link));
          },
        ),
      ),
    );
  }
}
