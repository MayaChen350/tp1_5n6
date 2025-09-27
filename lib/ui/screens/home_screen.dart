import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tp1_5n6/data/task.dart';
import 'package:tp1_5n6/ui/components/task_widget.dart';
import 'package:tp1_5n6/utils/month.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Task> _temporaryHardcodedList = [
    Task(name: "Teset", deadline: DateTime.now()),
    Task(name: "Teswwt", deadline: DateTime.now()),
    Task(name: "Teste", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Tsest", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Tesst", deadline: DateTime.now()),
    Task(name: "Tewest", deadline: DateTime.now()),
    Task(name: "Teswet", deadline: DateTime.now()),
    Task(name: "Tdewest", deadline: DateTime.now()),
    Task(name: "Teswt", deadline: DateTime.now()),
    Task(name: "Teswrt", deadline: DateTime.now()),
    Task(name: "Tesrwrt", deadline: DateTime.now()),
    Task(name: "Teswrt", deadline: DateTime.now()),
    Task(name: "Tesfdft", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test", deadline: DateTime.now()),
    Task(name: "Test 2", deadline: DateTime(2026)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GroupedListView<Task, DateTime>(
        elements: _temporaryHardcodedList,
        groupBy: (element) => element.deadline,
        groupComparator: (value1, value2) => value1.compareTo(value2),
        itemComparator: (item1, item2) =>
            item1.deadline.day.compareTo(item2.deadline.day),
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
