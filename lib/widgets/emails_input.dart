import 'package:flutter/material.dart';

class EmailsInput extends StatefulWidget {
  const EmailsInput({Key? key}) : super(key: key);

  @override
  _EmailsInputState createState() => _EmailsInputState();
}

class _EmailsInputState extends State<EmailsInput> {
  bool match = false;
  String email = "";
  String confirmEmail = "";

  void checkEmails() {
    if (email.isNotEmpty && confirmEmail.isNotEmpty && email == confirmEmail) {
      setState(() {
        match = true;
      });
    } else {
      setState(() {
        match = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String email) {
                setState(() {
                  this.email = email;
                });
                checkEmails();
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Confirm Email"),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String email) {
                setState(() {
                  confirmEmail = email;
                });
                checkEmails();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(match ? "Match" : "Not Matched"),
            ),
            ElevatedButton(
              onPressed: match
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text("Proceeding"),
                        action: SnackBarAction(
                          label: "Okay",
                          onPressed: () {},
                        ),
                      ));
                    }
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text("Cannot proceed because emails do not match"),
                        action: SnackBarAction(
                          label: "OK",
                          onPressed: () {},
                        ),
                      ));
                    },
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
