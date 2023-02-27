import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/custom_drawer.dart';
import 'package:listinha/src/shared/widgets/user_imagem_button.dart';

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SegmentedButton<int>(segments: const [
                ButtonSegment(value: 0, label: Text('Todos'),),
                ButtonSegment(value: 1, label: Text('Pendentes'),),
                ButtonSegment(value: 2, label: Text('Concluídas'),),
                ButtonSegment(value: 3, label: Text('Desativadas'),),
              ], selected: const {0},
              onSelectionChanged: (values) {},),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        label: Text('Nova Lista'),
        onPressed: (){}),
    );
  }
}
