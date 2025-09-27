import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/components/app_button.dart';

class NavButton extends StatelessWidget {
  final String text;
  final Widget route;

  const NavButton({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text,
      callback: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
