import 'package:flutter/material.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteConnexion.pb.dart';
import 'package:tp1_5n6/ui/components/screen_title_text.dart';
import 'package:tp1_5n6/ui/shared/connection_screen.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

import '../components/app_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final connectionScreenHelper = ConnectionScreenStateHelper(
    (fn) => setState(fn),
    context,
  );
  final RequeteInscription _request = RequeteInscription();

  @override
  Widget build(BuildContext context) {
    connectionScreenHelper.context = context; // refresh context in case

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ScreenTitleText(title: "Inscription"),
              TextField(
                decoration: InputDecoration(helperText: "Nom d'utilisateur"),
                readOnly: connectionScreenHelper.loading,
                onChanged: (username) {
                  setState(() {
                    _request.nom = username;
                  });
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(helperText: "Mot de passe"),
                readOnly: connectionScreenHelper.loading,
                onChanged: (password) {
                  setState(() {
                    _request.motDePasse = password;
                  });
                },
              ),
              if (_request.motDePasse != "")
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(helperText: "Mot de passe"),
                  readOnly: connectionScreenHelper.loading,
                  onChanged: (password) {
                    setState(() {
                      _request.confirmationMotDePasse = password;
                    });
                  },
                ).withPadding(bottom: 30),
              AppButton(
                text: "Connexion",
                callback: () => connectionScreenHelper.connexionButtonCallback(
                  () async => await connectionScreenHelper.service
                      .tryRegistering(_request),
                  () => context.mounted,
                ),
              ),
              if (connectionScreenHelper.errorMessage != null)
                connectionScreenHelper.createErrorTextThere(),
            ],
          ),
        ),
      ),
    );
  }
}
