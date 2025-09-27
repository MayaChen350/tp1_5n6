import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/components/navbutton.dart';
import 'package:tp1_5n6/ui/components/screen_title_text.dart';
import 'package:tp1_5n6/ui/screens/creation_screen.dart';
import 'package:tp1_5n6/ui/screens/register_screen.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ScreenTitleText(title: "Se connecter"),
              TextField(
                decoration: InputDecoration(helperText: "Nom d'utilisateur"),
              ),
              TextField(
                decoration: InputDecoration(helperText: "Mot de passe"),
              ).withPadding(bottom: 30),
              NavButton(
                text: "Connexion",
                route: const CreationScreen(),
              ).withPadding(bottom: 15),
              NavButton(text: "S'inscrire", route: const RegisterScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
