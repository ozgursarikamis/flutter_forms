import 'package:flutter/material.dart';

class DropDownInput extends StatefulWidget {
  const DropDownInput({Key? key}) : super(key: key);

  @override
  _DropDownInputState createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {
  String dropdownValue = "Apples";
  var dropdownItems = <String>["Apples", "Oranges", "Peaches"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (value) => {
          setState(() {
            dropdownValue = value.toString();
          })
        },
        items: dropdownItems.map((String item) {
          return DropdownMenuItem(value: item, child: Text(item));
        }).toList(),
      ),
    );
  }
}
