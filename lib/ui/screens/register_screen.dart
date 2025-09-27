import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/components/navbutton.dart';
import 'package:tp1_5n6/ui/components/screen_title_text.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ScreenTitleText(title: "Inscription"),
              TextField(
                decoration: InputDecoration(helperText: "Nom d'utilisateur"),
              ),
              TextField(
                decoration: InputDecoration(helperText: "Mot de passe"),
              ).withPadding(bottom: 30),
              NavButton(text: "Connexion", route: const Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
