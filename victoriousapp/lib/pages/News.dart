import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:victoriousapp/views/messages.dart';

class news extends StatefulWidget {
  news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'News Feed',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          GestureDetector(onTap: () {}, child: const Icon(Icons.notifications)),
          const PopupOptionMenu(),
        ],
      ),
      body: Column(children: [
        Container(
          child: Column(
            children: [
              AnimSearchBar(
                width: 400,
                textController: textController,
                onSuffixTap: () {
                  setState(() {
                    textController.clear();
                  });
                },
                closeSearchOnSuffixTap: true,
                animationDurationInMilli: 1000,
                rtl: true,
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const messages()));
        },
      ),
    );
  }
}

enum MenuOption { Block, Snooze, Report }

class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          const PopupMenuItem(
            child: Text('Report'),
            value: MenuOption.Block,
          ),
          const PopupMenuItem(
            child: Text('About'),
            value: MenuOption.Block,
          ),
          const PopupMenuItem(
            child: Text('Ignore'),
            value: MenuOption.Block,
          ),
        ];
      },
    );
  }
}
