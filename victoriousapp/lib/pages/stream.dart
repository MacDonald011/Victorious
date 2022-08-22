import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S T R E A M'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
