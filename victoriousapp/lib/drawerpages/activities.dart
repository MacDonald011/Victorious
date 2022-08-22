import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Your Latest Activities will show here',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
