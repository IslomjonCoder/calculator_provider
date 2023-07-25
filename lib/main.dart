import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled21/provider/Calculate_provider.dart';
import 'package:untitled21/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CalculatorProvider(),
      child: MaterialApp(
        title: 'Calculator App',
        home: HomeScreen(),
      ),
    );
  }
}
