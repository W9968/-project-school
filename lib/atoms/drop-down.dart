import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  final List<String> items;
  final String? label;
  final String initialValue;
  final void Function(String?)? onChanged;

  const DropDown(
      {super.key,
      required this.items,
      this.label,
      this.onChanged,
      required this.initialValue});

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
        Container(
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.elliptical(8.0, 8.0)),
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down_rounded, size: 24.0),
              dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.0),
              elevation: 1,
              underline: Container(
                height: 0.0,
                color: Colors.transparent,
              ),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 14.0,
              ),
              borderRadius: const BorderRadius.all(Radius.elliptical(8.0, 8.0)),
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: initialValue,
              onChanged: onChanged,
            ))
      ],
    );
  }
}
