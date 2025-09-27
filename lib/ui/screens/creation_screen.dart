import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/components/app_button.dart';
import 'package:tp1_5n6/ui/components/datepicker.dart';
import 'package:tp1_5n6/ui/screens/home_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(90);

    return Scaffold(
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
                  taskName = value;
                },
              ).withPadding(bottom: 25),
              Datepicker(
                label: "Date d'échéance",
                onDateSelected: (date) {
                  dateSelected = date;
                },
              ),
              AppButton(text: "Créer", callback: () {



                // Go to home menu
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => HomeScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
