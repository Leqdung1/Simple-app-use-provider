import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/drawer_menu.dart';
import 'package:provider_example/models/ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.teal,
      ),
      drawer: const DrawMenu(),
      body: Consumer<Ui>(
        builder: (context, ui, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Font Size: ${ui.fontSize.toInt()}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Slider(
                value: ui.SlideFontSize,
                onChanged: (newValue) {
                  ui.fontSize = newValue;
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
