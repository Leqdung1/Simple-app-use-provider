import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/about.dart';
import 'package:provider_example/home.dart';
import 'package:provider_example/models/ui.dart';
import 'package:provider_example/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Ui()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
          '/about': (context) => AboutPage(),
        },
      ),
    );
  }
}
