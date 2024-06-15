import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 25, 242),
      ),
      body: Dicepage(),
    ),
  ));
}
class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
   var DiceNumver =1;
    @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            child: TextButton(
              onPressed: () {
                 setState(() {
                   print(" $DiceNumver button pressed");
                DiceNumver = Random().nextInt(6)+1;
                 });
                
              }, 
            child: Image.asset('images/dice$DiceNumver.jpeg'),
          
            ),
          )
        ],
      ),
    );
  }
}