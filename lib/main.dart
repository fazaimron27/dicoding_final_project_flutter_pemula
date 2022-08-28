import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
