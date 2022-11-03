import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({
    Key? key,
    required this.label,
    required this.prefix,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final String prefix;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.amber,
        ),
        prefixText: prefix,
      ),
      style: const TextStyle(
        color: Colors.amber,
        fontSize: 23,
      ),
      onChanged: onChanged,
    );
  }
}
