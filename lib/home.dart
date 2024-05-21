import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/drawer_menu.dart';
import 'package:provider_example/models/ui.dart';

class HomePage extends StatelessWidget {
  final String text = lorem(paragraphs: 3, words: 50);

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager By Provider'),
        backgroundColor: Colors.teal,
      ),
      drawer: const DrawMenu(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Consumer<Ui>(
          builder: (context, ui, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(
                  fontSize: ui.fontSize,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
