import 'package:flutter/material.dart';
import 'package:frema/atoms/input.dart';
import 'package:frema/models/user-login.dart';
import 'package:frema/screen/projects.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  var userLogin = UserLogin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 42.0, left: 24.0, right: 24.0),
            child: Form(
              key: key,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(children: [
                Input(
                  placeholder: 'Enter your email',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                  onSaved: (String? value) => userLogin.setEmail = value!,
                ),
                const Padding(padding: EdgeInsets.only(top: 18.0)),
                Input(
                  placeholder: 'Enter your password',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  isPassword: true,
                  onSaved: (String? value) => userLogin.setPassword = value!,
                ),
                const Padding(padding: EdgeInsets.only(top: 48.0)),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: FilledButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          key.currentState!.save();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Project(),
                            ),
                          );
                        } else {
                          print("error");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text("Sign in",
                          style: TextStyle(fontSize: 16))),
                ),
              ]),
            )));
  }
}
