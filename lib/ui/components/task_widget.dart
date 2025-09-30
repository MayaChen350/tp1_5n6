import 'package:flutter/material.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTache.pb.dart';
import 'package:tp1_5n6/ui/screens/consultation_screen.dart';

import '../../data/type_safety/long.dart';

class TaskWidget extends StatefulWidget {
  final ReponseAccueilItem task;

  const TaskWidget({super.key, required this.task});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late int progress = widget.task.pourcentageAvancement;
  final _service = AppService();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: GestureDetector(
        onTap: () async {
          final task = await _service.getTaskDetails(long(widget.task.id.toInt()));

          if (task is Success<ReponseDetailTache>) {
            if (!context.mounted) return;
            final result = await Navigator.of(context).push<int>(
              MaterialPageRoute(
                builder: (context) => ConsultationScreen(task: task.value!),
              ),
            );

            setState(() {
              progress = result!;
            });
          } else {
            throw StateError("Erreur");
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.task.nom),
              Column(
                children: [
                  Text(
                    "Pour dans ${widget.task.dateLimite.toDateTime().difference(DateTime.now()).inDays > 0 ? "${widget.task.dateLimite.toDateTime().difference(DateTime.now()).inDays} jours" : "${widget.task.dateLimite.toDateTime().difference(DateTime.now()).inHours} heures"}",
                  ),
                  Text(
                    style: TextStyle(fontSize: 10),
                    "(${widget.task.pourcentageTemps}% écoulé)",
                  ),
                ],
              ),
              Text("$progress%"),
            ],
          ),
        ),
      ),
    );
  }
}