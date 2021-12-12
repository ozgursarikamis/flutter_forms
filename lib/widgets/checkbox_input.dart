import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: false, onChanged: (bool? value) { print(value); },);
  }
}
