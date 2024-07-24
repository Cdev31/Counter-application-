import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( child: Text("Counter Screen")),
        backgroundColor: const Color.fromARGB(255, 27, 158, 55),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            Text('$counter',
             style: const TextStyle( fontSize: 140, fontWeight: FontWeight.bold )),
            Text('Click${ counter < 2 ? '': 's'}', style: const TextStyle( fontSize: 25))
          ],),
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: const Icon( Icons.plus_one ),
          ),
      );
  }
} 