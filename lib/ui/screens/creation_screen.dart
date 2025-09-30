import 'package:flutter/material.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/ui/components/app_button.dart';
import 'package:tp1_5n6/ui/components/datepicker.dart';
import 'package:tp1_5n6/ui/components/nav_drawer.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

import '../components/input_field.dart';
import '../components/screen_title_text.dart';

class CreationScreen extends StatefulWidget {
  const CreationScreen({super.key});

  @override
  State<CreationScreen> createState() => _CreationScreenState();
}

class _CreationScreenState extends State<CreationScreen> {
  DateTime? dateSelected;
  String? taskName;
  final _service = AppService();

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(70);

    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ScreenTitleText(
                title: "Création de tâche",
              ).withPadding(bottom: 20),
              InputField(
                title: "Nom de la tâche",
                valueChanged: (value) {
                  setState(() {
                    taskName = value;
                  });
                },
              ).withPadding(bottom: 25),
              DatePicker(
                label: "Date d'échéance",
                onDateSelected: (date) {
                  setState(() {
                    dateSelected = date;
                  });
                },
              ),
              AppButton(
                text: "Créer",
                callback: () async {
                  if (taskName != null && dateSelected != null) {
                    final result = await _service.addNewTask(
                      taskName!,
                      dateSelected!,
                    );

                    switch (result) {
                      case Success<String?>():
                        print(result.value);
                        final task = await _service.getTaskFromName(taskName);

                        if (task is Success &&
                            (task as Success<ReponseAccueilItem?>).value !=
                                null) {
                          if (!context.mounted) return;
                          Navigator.pop(context, task.value!);
                        } else {
                          setState(() {
                            errorMessage =
                                (task as Failure<ReponseAccueilItem?>).message;
                          });
                        }
                        break;
                      case Failure<String?>():
                        setState(() {
                          errorMessage = result.message;
                        });
                        break;
                    }
                  }
                },
              ),
              if (errorMessage != null)
                Text(
                  errorMessage!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
