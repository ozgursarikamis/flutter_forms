import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {

  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(() {
      print("Current value is: ${textController.text}");
    });
  }

  @override
  void dispose() {
    super.dispose();

    // to prevent memory leaks:
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 5,
      maxLength: 50,
      decoration: const InputDecoration(labelText: "Name"),
      // onChanged: (String value) {
      //   if (kDebugMode) {
      //     print(value);
      //   }
      // },
      controller: textController,
    );
  }
}
