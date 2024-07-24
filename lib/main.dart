import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counter/counter_function_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build( BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 19, 87, 34)
      ),
      home: const CounterFunctionScreen());
  }
}