import 'package:card_widget/custom_card.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const CustomCard(
        mainText: 'Hello',
        subText: 'Have you used this app before?',
        leftText: 'No',
        rightText: 'Yes',
        leadingIcon: Icons.question_mark
      )
    );
  }
}

void main(){
  runApp(const MyApp());
}