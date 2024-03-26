import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Text('Voce clicou $contador vezes')
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              contador++;
            });
          },
          child: Icon(Icons.add),
        ),
        ),
    );
  }
}
