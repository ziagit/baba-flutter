import 'package:flutter/material.dart';
import 'package:babah/loading.dart';
import 'package:babah/pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      title: 'Baba',
      initialRoute: '/',
      routes: {
        '/': (_) => Loading(),
        '/tabs': (_) => Tabs(),
      },
    );
  }
}
