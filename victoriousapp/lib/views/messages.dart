// import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:victoriousapp/drawerpages/notifications.dart';
import 'package:victoriousapp/pages/home.dart';
import 'package:victoriousapp/views/fav_contacts.dart';
import 'package:victoriousapp/views/homepage.dart';
import 'package:victoriousapp/widgets/category_selector.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      // APP BAR//
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: const Icon(Icons.search))
        ],
      ),

      // Body starts here//
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: const <Widget>[
                  FavContacts(),
                ],
              ),
            ),
          ),
        ],
      ),

      // FLOATING ACTION BUTTON
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: const Icon(Icons.edit),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const notify()));
          },
        ),
        const SizedBox(
          height: 20,
        ),
        FloatingActionButton(
          child: const Icon(Icons.person_add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homepage()));
          },
        ),
      ]),
    );
  }
}
