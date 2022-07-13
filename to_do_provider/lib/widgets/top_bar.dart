import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/data.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.fromLTRB(10,12,10,0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset('assets/images/bg1.png').image,
          fit: BoxFit.contain,
        ),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 241, 209, 64),
            Colors.white
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                CircleAvatar(
                  backgroundColor: const  Color.fromARGB(255, 247, 98, 115),
                  child: IconButton(
                    icon: const Icon(Icons.dehaze),
                    color: Colors.white,
                    onPressed: (){}, 
                  ),
                ),
                CircleAvatar(
                  backgroundColor: const  Color.fromARGB(255, 247, 98, 115),
                  child: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    color: Colors.white,
                    onPressed: (){}, 
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      //Иконки дат
                    ],
                  ),
                ),
                
                Chip(
                  backgroundColor: const Color.fromARGB(255, 247, 98, 115) ,
                  label: Text(context.watch<Data>().getData, style: const TextStyle(
                    color: Colors.white))
                ),

                CircleAvatar(
                  backgroundColor: const  Color.fromARGB(255, 247, 98, 115),
                  child: IconButton(
                    icon: const Icon(Icons.insert_chart),
                    color: Colors.white,
                    onPressed: (){},
                    tooltip: 'Показать график', 
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
