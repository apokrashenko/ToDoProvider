import 'package:flutter/material.dart';
import '../pages/home_page.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.red,
          secondary: const  Color.fromARGB(255, 247, 98, 115),
        ),
      ),
      title: 'Task App Provider',
      home: const HomePage(),
    );
  }
}