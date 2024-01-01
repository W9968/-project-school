import 'package:flutter/material.dart';

class ProdjectAdd extends StatefulWidget {
  const ProdjectAdd({super.key});

  @override
  State<ProdjectAdd> createState() => _ProdjectAddState();
}

class _ProdjectAddState extends State<ProdjectAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Add'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Center(
            child: Text('hello'),
          )),
    );
  }
}
