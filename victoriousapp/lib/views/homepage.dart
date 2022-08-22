import 'package:flutter/material.dart';
import 'package:victoriousapp/pages/News.dart';
import 'package:victoriousapp/pages/Userprofile.dart';
import 'package:victoriousapp/pages/stream.dart';
import 'package:victoriousapp/pages/support.dart';
import '../pages/home.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    homepage(),
    news(),
    Stream(),
    Support(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Feed'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Stream'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Support'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
          ]),
    );
  }
}
