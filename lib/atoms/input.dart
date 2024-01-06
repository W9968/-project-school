import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String? label;
  final String placeholder;
  final IconData? icon;

  final TextInputType? keyboardType;
  final bool isPassword;

  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  final String? animatedLabel;

  final int? lines;

final TextEditingController? controller;

  const Input({
    Key? key,
    this.label,
    this.icon,
    required this.placeholder,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onSaved,
    this.animatedLabel,
    this.lines = 1,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(label!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 14.0,
              )),
        const SizedBox(height: 4.0),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surfaceVariant,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.elliptical(8.0, 8.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.elliptical(8.0, 8.0)),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(8.0, 8.0)),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(8.0, 8.0)),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            filled: true,
            isDense: true,
            hintText: placeholder,
            label: animatedLabel != null ? Text(animatedLabel!) : null,
            prefixIcon: icon != null ? Icon(icon) : null,
          ),
          style: const TextStyle(
            fontSize: 14.0,
          ),
          minLines: lines,
          maxLines: (lines ?? 1),
          validator: validator,
          onSaved: onSaved,
          obscureText: isPassword,
          keyboardType: keyboardType,
          controller: controller,
        ),
      ],
    );
  }
}
