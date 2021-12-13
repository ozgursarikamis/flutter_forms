import 'package:flutter/material.dart';
import 'package:flutter_forms/models/passwords.dart';
import 'package:flutter_forms/widgets/passwords_reset_form_field.dart';

import 'checkbox_form_field.dart';

class PasswordResetForm extends StatefulWidget {
  const PasswordResetForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends State<PasswordResetForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Expanded(
            child: ListView(
              children: [
                PasswordResetFormField(
                  initialValue: Passwords(),
                  onSaved: (Passwords? passwords) {
                    print("Password: ${passwords?.password}");
                  },
                  validator: (Passwords? passwords) {
                    if (passwords != null) {
                      if (passwords.ismatch()) {
                        if (passwords.isValid()) {
                          return null;
                        }
                        return "Passwords should be 8 characters long";
                      }
                      return "Passwords should be same";
                    }
                    return "Passwords should not be empty";
                  },
                  autovalidateMode: AutovalidateMode.always,
                ),
                CheckboxFormField(
                  title: "I agree to change password",
                  onSaved: (bool? checked) {
                    print("Checkbox: $checked");
                  },
                  validator: (bool? value) {
                    return value != null ? null : "You must check this";
                  },
                  autovalidateMode: AutovalidateMode.always,
                )
              ],
            ),
          ),
        ),
        ElevatedButton(
          child: const Text("Reset Password"),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
            }
          },
        )
      ],
    );
  }
}
