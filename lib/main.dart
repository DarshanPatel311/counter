import 'package:flutter/material.dart';


void main() {
  runApp(const Counting());
}

class Counting extends StatefulWidget {
  const Counting({super.key});

  @override
  State<Counting> createState() => _CounterState();
}

class _CounterState extends State<Counting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App',
            style: TextStyle(
                color: Colors.white
            ),),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Text('$count',style: TextStyle(fontSize: 60 , ),),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            setState(() {
              count++;
              print('$count');
            }
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

int count = 0;