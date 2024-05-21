import 'package:flutter/material.dart';

class DrawMenu extends StatelessWidget {
  const DrawMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Center(
              child: Text(
                'Provider',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          getListTitle('Home', () {
            Navigator.pushNamed(context, '/');
          }),
          getLine(),
          getListTitle('About', () {
            Navigator.pushNamed(context, '/about');
          }),
          getLine(),
          getListTitle('Setting', () {
            Navigator.pushNamed(context, '/settings');
          }),
        ],
      ),
    );
  }
}

Widget getLine() {
  return SizedBox(
    height: 1,
    width: 20,
    child: Container(
      color: Colors.grey,
    ),
  );
}

Widget getListTitle(String title, Function() onTap) {
  return ListTile(
    title: Text(title),
    onTap: onTap,
  );
}
