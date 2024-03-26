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
  String aviso = 'Voce clicou 0 vezes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Text(aviso)
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              contador++;
              if(contador > 10){
                aviso = 'O valor passou o limite do app';
              }
              else{
                aviso = 'Voce clicou $contador vezes';
              }
            });
          },
          child: Icon(Icons.add),
        ),
        
        
        ),
    );
  }
}
