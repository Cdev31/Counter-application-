import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( child: Text("Counter functions", style: TextStyle( color: Colors.white),)),
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              CustomWidget( 
                icon: Icons.refresh_rounded,
                onPressed: (){
                  counter = 0;
                  setState(() {
                    
                  });
                },
                ),

              const SizedBox( height: 10),

              CustomWidget(
                icon: Icons.exposure_plus_1_outlined,
                onPressed: (){
                  counter++;
                  setState(() {
                    
                  });
                },
                ),
            
              const SizedBox( height: 10),

              CustomWidget( 
                icon: Icons.exposure_minus_1_outlined,
                onPressed: (){
                  if (counter == 0) return ;
                  counter--;
                  setState(() {
                    
                  });
                }, 
              ),
            ],
        )
      );
  }
}

class CustomWidget extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomWidget({
    super.key,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton( 
    shape: const StadiumBorder(),
    onPressed: onPressed,
    child: Icon( icon ),
    );
  }
} 