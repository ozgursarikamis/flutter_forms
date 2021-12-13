import 'package:flutter/material.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({Key? key}) : super(key: key);

  @override
  _BasicFormState createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (String? value) {
                        print("Value $value");
                      },
                    ),
                    TextFormField(
                      onSaved: (String? value) {
                        print("Value $value");
                      },
                    ),
                    TextFormField(
                      initialValue: "Hi",
                      onSaved: (String? value) {},
                      validator: (String? value) {
                        if (value == null) {
                          return "Provide a value";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
              )),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
              },
              child: const Text("Continue"))
        ],
      ),
    );
  }
}
