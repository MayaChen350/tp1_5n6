import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String text;
  final Widget route;

  const NavButton({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.primary,
        ),
        foregroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      onPressed: () {
        {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => route));
        }
      },
      child: Text(text),
    );
  }
}