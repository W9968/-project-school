import 'package:flutter/material.dart';
import 'package:frema/screen/project-add.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProdjectAdd(),
          ),
        );
      },
      iconSize: 32.0,
      icon: const Icon(Icons.add),
    );
  }
}
