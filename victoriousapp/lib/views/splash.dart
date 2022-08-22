import 'package:flutter/material.dart';
import 'package:victoriousapp/views/signin.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const signin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Victorious People Assembly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text('House Of Praise',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ))
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 4, 36, 63));
  }
}
