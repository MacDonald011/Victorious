// import 'package:flutter/material.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
// import 'package:victoriousapp/drawerpages/hidden_drawer_pages.dart/block.dart';
// import 'package:victoriousapp/drawerpages/hidden_drawer_pages.dart/settings.dart';
// import '../drawerpages/hidden_drawer_pages.dart/report.dart';

// class hiddendrawer extends StatefulWidget {
//   const hiddendrawer({Key? key}) : super(key: key);

//   @override
//   State<hiddendrawer> createState() => _hiddendrawerState();
// }

// class _hiddendrawerState extends State<hiddendrawer> {
//   List<ScreenHiddenDrawer> _pages = [];

//   @override
//   void initState() {
//     super.initState();
//     _pages = [
//       ScreenHiddenDrawer(
//         ItemHiddenMenu(
//             name: 'Report Scam',
//             baseStyle: TextStyle(),
//             selectedStyle: TextStyle()),
//         report(),
//       )
//     ];
//     _pages = [
//       ScreenHiddenDrawer(
//         ItemHiddenMenu(
//             name: 'Block', baseStyle: TextStyle(), selectedStyle: TextStyle()),
//         block(),
//       )
//     ];
//     _pages = [
//       ScreenHiddenDrawer(
//         ItemHiddenMenu(
//             name: 'Messages',
//             baseStyle: TextStyle(),
//             selectedStyle: TextStyle()),
//         settings(),
//       )
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return HiddenDrawerMenu(
//       backgroundColorMenu: Color.fromARGB(255, 1, 27, 48),
//       screens: _pages,
//       initPositionSelected: 0,
//     );
//   }
// }
