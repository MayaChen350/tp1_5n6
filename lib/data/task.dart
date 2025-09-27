
class Task {
  final String name;
  final DateTime deadline;
  // late final String month = deadline.month.toMonth();

  Task({required this.name, required this.deadline});

  // dynamic format() {
  //   final String monthName = deadline.month.toMonth();
  //
  //   return {
  //     'name': name,
  //     'month': monthName,
  //     'day': "${deadline.day} $monthName"
  //   };
  // }
}