// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
