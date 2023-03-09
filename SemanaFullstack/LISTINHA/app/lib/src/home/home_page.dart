import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/custom_drawer.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';
import 'package:listinha/src/shared/widgets/user_imagem_button.dart';
import 'package:realm/realm.dart';

import 'widgets/task_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('LISTINHA'),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 8),
          child: UserImageButton(),
        ),],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 50,
                  bottom: 100,
                ),
                itemCount: 150,
                itemBuilder: (_, index){
                  final board = TaskBoard(Uuid.v4(), 'Nova lista de tarefas 1');
                  return TaskCard(board: board,);
                },
                separatorBuilder: (context, index){ 
                  return const SizedBox(height: 10,);
                },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedButton<int>(segments: const [
                  ButtonSegment(value: 0, label: Text('Todos'),),
                  ButtonSegment(value: 1, label: Text('Pendentes'),),
                  ButtonSegment(value: 2, label: Text('Concluídas'),),
                  ButtonSegment(value: 3, label: Text('Desativadas'),),
                ], selected: const {0},
                onSelectionChanged: (values) {},),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        label: Text('Nova Lista'),
        onPressed: (){
          Navigator.of(context).pushNamed('./edit');
        },),
    );
  }
}
