import 'package:flutter/material.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/ui/screens/home_screen.dart';

class ConnectionScreenStateHelper {
  bool loading = false;
  final AppService service = AppService();
  String? errorMessage;

  final void Function(Function() fn) setStateCall;
  BuildContext context;

  ConnectionScreenStateHelper(this.setStateCall, this.context);

  void sendErrorMessage(String? message) {
    // TODO
    message ??= "Unknown error";
    setStateCall(() {
      errorMessage = message;
    });
  }

  void connexionButtonCallback<T>(
    Future<Result<T>> Function() effect,
    bool Function() isMounted,
  ) async {
    if (!loading) {
      setStateCall(() {
        loading = true;
        errorMessage = null;
      });

      final result = await effect();

      switch (result) {
        case Success<T>(value: final response):
          if (!context.mounted) return;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        case Failure<T>(message: final message):
          sendErrorMessage(message);
      }

      setStateCall(() {
        loading = false;
      });
    }
  }

  Text createErrorTextThere() => Text(
    errorMessage!,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.error),
  );
}
