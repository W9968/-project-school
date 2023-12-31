import 'package:flutter/material.dart';
import 'package:frema/atoms/input.dart';
import 'package:frema/composable/auth-app-bar.dart';
import 'package:frema/screen/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AuthAppBar(),
        body: Container(
          padding: const EdgeInsets.only(top: 42.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              const Input(),
              const Input(),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Dashboard()));
                  },
                  child: const Text("login"))
            ],
          ),
        ));
  }
}
