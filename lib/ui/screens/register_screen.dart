import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/utils/widget_style.dart';

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
              Text(
                "Inscription",
                style: TextStyle(
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(helperText: "Nom d'utilisateur"),
              ),
              TextField(
                decoration: InputDecoration(helperText: "Mot de passe"),
              ).withPadding(bottom: 30),
              ElevatedButton(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Placeholder(),
                      ),
                    );
                  }
                },
                child: const Text('Connexion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
