import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/shared.dart';
import 'package:tp1_5n6/ui/components/nav_drawer.dart';
import 'package:tp1_5n6/ui/components/task_widget.dart';
import 'package:tp1_5n6/ui/screens/creation_screen.dart';
import 'package:tp1_5n6/utils/month.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ReponseAccueilItem> _taskList = List.empty();
  final _service = AppService();

  @override
  void initState() {
    Shared.username = widget.username;

    super.initState();
    fetchTasks();
  }

  Future<void> fetchTasks() async {
    final taskList = await _service.getTasks();

    switch (taskList) {
      case Success<List<ReponseAccueilItem>>():
        setState(() {
          _taskList = taskList.value!;
        });
      case Failure<List<ReponseAccueilItem>>():
        if (kDebugMode) {
          print("Failed to load tasks: ${taskList.message}");
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final ReponseAccueilItem? result =
                  await Navigator.push<ReponseAccueilItem?>(
                    context,
                    MaterialPageRoute(builder: (_) => CreationScreen()),
                  );

              if (result != null) {
                setState(() {
                  _taskList.add(result);
                });
              }
            },
          ),
        ],
      ),
      body: GroupedListView<ReponseAccueilItem, DateTime>(
        elements: _taskList,
        groupBy: (element) => element.dateLimite.toDateTime(),
        groupComparator: (value1, value2) => value1.compareTo(value2),
        itemComparator: (item1, item2) => item1.dateLimite
            .toDateTime()
            .compareTo(item2.dateLimite.toDateTime()),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (DateTime value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${value.day} ${value.month.toMonth()} ${value.year}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return TaskWidget(task: element);
        },
      ),
    );
  }
}
