import 'package:flutter/material.dart';

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {

  String radioValue = "apples";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          RadioListTile(
            title: const Text('Apples'),
            value: "apples",
            onChanged: (value) {
              setState(() {
                radioValue = value.toString();
              });
            },
            groupValue: radioValue,
          ),
          RadioListTile(
            title: const Text('Oranges'),
            value: "oranges",
            onChanged: (value) {
              setState(() {
                radioValue = value.toString();
              });
            },
            groupValue: radioValue,
          ),
          RadioListTile(
            title: const Text('Peaches'),
            value: "peaches",
            onChanged: (value) {
              setState(() {
                radioValue = value.toString();
              });
            },
            groupValue: radioValue,
          ),
        ],
      ),
    );
  }
}
