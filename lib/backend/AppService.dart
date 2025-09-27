class AppService {
  // Singleton boilerplate
  AppService._internal();

  static AppService? _instance;

  factory AppService() {
    _instance ??= AppService._internal();
    return _instance!;
  }

  // Service logic
  void addNewTask(String name, DateTime deadline) {
    print("Task with name $name and deadline $deadline should be created at that point.");

    // TODO: Implement this
  }
}
