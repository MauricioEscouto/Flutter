import 'package:flutter/material.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskBoard board;

  const TaskCard({super.key, required this.board});

  double getProgress(List<Task> tasks) {
    final completes = tasks.where((task) => task.completed).length;

    return completes / tasks.length;
  }

  @override
  Widget build(BuildContext context) {
    final progress = getProgress(board.tasks);
    const progressText = '1/5';
    final title = board.title;
    const statusText = 'Pendente';
    const iconData = Icons.access_alarm;

    final backgroundColor = Colors.red.withOpacity(0.5);
    const color = Colors.red;

    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(iconData),
              Spacer(),
              Text(statusText),
            ],
          ),
          Spacer(),
          Text(title),
          LinearProgressIndicator(
            value: progress,
            color: color,
          ),
          Text(progressText),
        ],
      ),
    );
  }
}
