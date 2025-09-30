import 'package:flutter/material.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTache.pb.dart';
import 'package:tp1_5n6/ui/components/nav_drawer.dart';
import 'package:tp1_5n6/utils/month.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

import '../../data/type_safety/long.dart';

class ConsultationScreen extends StatefulWidget {
  final ReponseDetailTache task;

  const ConsultationScreen({super.key, required this.task});

  @override
  State<ConsultationScreen> createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends State<ConsultationScreen> {
  late double _sliderValue = widget.task.pourcentageAvancement.toDouble();
  final _service = AppService();

  late final _dateLimit = widget.task.dateLimite.toDateTime();
  late final String _date =
      "${_dateLimit.day} ${_dateLimit.month.toMonth()} ${_dateLimit.year}";

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // handled manually below
      onPopInvokedWithResult: (didPop, _) async {
        if (!didPop) {
          await _service.changeProgress(
            long(widget.task.id.toInt()),
            _sliderValue.round(),
          );
          if (!context.mounted) return;
          Navigator.pop(context, _sliderValue.round());
        }
      },
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text(widget.task.nom),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: SafeArea(
          child: Column(
            spacing: 40,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(style: TextStyle(fontSize: 25), "Progression"),
                  Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _sliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value.roundToDouble();
                      });
                    },
                  ),
                ],
              ),
              Column(
                spacing: 30,
                children: [
                  Column(
                    children: [
                      const Text(style: TextStyle(fontSize: 25), "Date Limite"),
                      Text(style: TextStyle(fontSize: 20), _date),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        style: TextStyle(fontSize: 25),
                        "Temps Écoulée",
                      ),
                      Text(
                        style: TextStyle(fontSize: 20),
                        "${widget.task.pourcentageTemps}%",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ).withPadding(top: 0),
      ),
    );
  }
}
