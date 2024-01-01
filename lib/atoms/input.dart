import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        labelText: "Username",
        filled: true,
        hintText: "Enter your username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
      ),
      // validator: validator,
      // onSaved: onsaved,
    );
  }
}
