import 'package:flutter/material.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/ui/screens/consultation_screen.dart';

class TaskWidget extends StatelessWidget {
  final ReponseAccueilItem task;

  const TaskWidget({super.key, required this.task});

  // TODO: Beautifulize thisz
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ConsultationScreen(task: task),
            ),
          );
        },
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          // leading: ImageIcon(
          //   NetworkImage(
          //     'https://www.pngall.com/wp-content/uploads/2017/04/IPL-Logo-2017-PNG.png',
          //   ), // Leading icon
          // ),
          title: Text(task.nom),
        ),
      ),
    );
  }
}
