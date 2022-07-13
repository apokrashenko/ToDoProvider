import 'package:flutter/material.dart';
import 'package:to_do_provider/widgets/top_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          TopBar()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Добавить таск
        },
        elevation: 7,
        tooltip: 'Добавить новую задачу',
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}