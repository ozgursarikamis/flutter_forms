import 'package:flutter/material.dart';

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text('Apples'),
          value: "apples",
          onChanged: (value) { },
          groupValue: "oranges",
        ),
        RadioListTile(
          title: const Text('Oranges'),
          value: "oranges",
          onChanged: (value) { },
          groupValue: "oranges",
        ),
        RadioListTile(
          title: const Text('Peaches'),
          value: "peaches",
          onChanged: (value) { },
          groupValue: "oranges",
        ),
      ],
    );
  }
}
