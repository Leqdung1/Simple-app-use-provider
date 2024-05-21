import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/ui.dart';

// ignore: must_be_immutable
class AboutPage extends StatelessWidget {
  String text = lorem(paragraphs: 10, words: 2000);

  AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Consumer<Ui>(
            builder: (context, Ui, child) {
              return SingleChildScrollView(
                child: RichText(
                  text: TextSpan(
                      text: text,
                      style: TextStyle(
                        fontSize: Ui.fontSize,
                        color: Colors.black,
                      )),
                ),
              );
            },
          ),
        ));
  }
}
