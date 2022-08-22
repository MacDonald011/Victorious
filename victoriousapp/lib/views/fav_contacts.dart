import 'package:flutter/material.dart';

class FavContacts extends StatelessWidget {
  const FavContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'Favourite Contacts',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              PopupOptionMenu(),
            ],
          ),
        ),
        // Container(
        //   height: 120.0,
        //   color: Colors.blue,
        //   child: ListView.builder(
        //     itemCount: Favourites.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return ;
        //     },
        //   ),
        // ),
      ],
    );
  }
}

enum MenuOption { Remove, Add, More }

class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          const PopupMenuItem(
            child: Text('Remove'),
            value: MenuOption.Remove,
          ),
          const PopupMenuItem(
            child: Text('Add'),
            value: MenuOption.Add,
          ),
          const PopupMenuItem(
            child: Text('More'),
            value: MenuOption.More,
          ),
        ];
      },
    );
  }
}
