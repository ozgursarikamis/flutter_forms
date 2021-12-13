import 'package:flutter/material.dart';
import 'package:flutter_forms/widgets/password_reset_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Forms',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text('Flutter Forms'),
            ),
            body: const Padding(
              padding: EdgeInsets.all(24.0),
              child: PasswordResetForm(),
            ) ));
  }
}
