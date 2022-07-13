import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';
import 'models/data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData().copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: Colors.red,
                  secondary: const Color.fromARGB(255, 247, 98, 115),
                ),
          ),
          title: context.watch<Data>().getData,
          home: const HomePage(),
        );
      },
    );
  }
}
