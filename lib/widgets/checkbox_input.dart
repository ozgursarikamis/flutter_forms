import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool checkBox1 = false;
  bool checkBox2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(value: checkBox1, onChanged: (bool? value) {
          setState(() {
            checkBox1 = !checkBox1;
          });
        },),
        Checkbox(value: checkBox2, onChanged: (bool? value) {
          setState(() {
            checkBox2 = !checkBox2;
          });
        },),
      ],
    );
  }
}
