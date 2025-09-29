import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/data/task.dart';
import 'package:tp1_5n6/ui/components/task_widget.dart';
import 'package:tp1_5n6/utils/month.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<ReponseAccueilItem> _taskList;
  final _service = AppService();

  @override
  void initState() {
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
        setState(() {
          _taskList = List.empty();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GroupedListView<ReponseAccueilItem, DateTime>(
        elements: _taskList,
        groupBy: (element) => element.dateLimite.toDateTime(),
        groupComparator: (value1, value2) => value1.compareTo(value2),
        itemComparator: (item1, item2) =>
            item1.dateLimite.toDateTime().day.compareTo(item2.dateLimite.toDateTime().day),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (DateTime value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${value.month.toMonth()} ${value.year}",
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

// // Group by is asking for == and hashCode function to work
// class YearMonth {
//   final int year;
//   final int month;
//   late final dynamic key = (month + year << 4);
//   // * 16 in a slightly more performant way and more concise to why it is
//   // * 12 is clearer but it takes additional cpu cycles (not a multiple of 2)
//   // and the entire point of multiplying there is to be able to sort by
//   // years too so as long as it's bigger than 12 it's good
//
//   // For more info see how ARM machine code/assembly work
//   // more precisely the barrel shifter (we're targeting the ARM
//   // architecture on mobile)
//
//   YearMonth(this.year, this.month);
//
//   @override
//   int get hashCode => key.hashCode;
//
//   @override
//   bool operator ==(other) =>
//       other is YearMonth && other.key == this.key;
// }
