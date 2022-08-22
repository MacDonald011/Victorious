import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  final text;
  final function;

  buttons({this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.pink,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
