import 'package:flutter/material.dart';
import 'package:palindrom/palindro.dart';

void main() {
  runApp( MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  TextEditingController stringcontroller=TextEditingController();
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
     home:const Palindrome()
      );
  }
}
