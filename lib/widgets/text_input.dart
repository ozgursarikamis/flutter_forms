import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 5,
      maxLength: 50,
      decoration: InputDecoration(labelText: "Name"),
    );
  }
}
