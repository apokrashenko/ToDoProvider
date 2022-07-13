import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/widgets/top_bar.dart';

import '../models/data.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const <Widget>[
          TopBar(),
          MytextField(),
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

class MytextField extends StatelessWidget {
  const MytextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newData) => context.read<Data>().changeString(newData),
    );
  }
}