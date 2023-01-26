import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Tarefas'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Tarefas('Aprender flutter'),
            Tarefas('Andar de bike'),
            Tarefas('Jogar the witcher'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},),
      )
    ,);
  }
}

class Tarefas extends StatelessWidget {
  final String nome;

  const Tarefas(this.nome,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(color: Colors.blue, height: 140,),
          Container(color: Colors.white, height: 100, child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.black26,width: 72,height: 100,),
                Text(nome),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
