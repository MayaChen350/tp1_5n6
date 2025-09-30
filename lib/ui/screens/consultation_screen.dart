import 'package:flutter/material.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';

// TODO: Make this better gosh this is awful
class ConsultationScreen extends StatelessWidget {
  final ReponseAccueilItem task;

  const ConsultationScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.nom),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center( // Why is nothing centered
        child: Column(
          children: [
            Row(
              spacing: 5,
              children: [
                const Text("Deadline"),
                Text(task.dateLimite.toDateTime().toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
