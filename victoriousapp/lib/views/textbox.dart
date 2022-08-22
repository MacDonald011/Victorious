import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const Textbox({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          color: const Color.fromARGB(255, 216, 218, 219),
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
