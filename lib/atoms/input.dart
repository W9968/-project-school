import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String placeholder;

  const Input({
    super.key,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceVariant,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      // validator: validator,
      // onSaved: onsaved,
    );
  }
}
