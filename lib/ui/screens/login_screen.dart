import 'package:flutter/material.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteInscription.pb.dart';
import 'package:tp1_5n6/ui/components/app_button.dart';
import 'package:tp1_5n6/ui/components/navbutton.dart';
import 'package:tp1_5n6/ui/components/screen_title_text.dart';
import 'package:tp1_5n6/ui/screens/register_screen.dart';
import 'package:tp1_5n6/ui/shared/connection_screen.dart';
import 'package:tp1_5n6/utils/widget_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final RequeteConnexion _request = RequeteConnexion();
  late final connectionScreenHelper = ConnectionScreenStateHelper(
    (fn) => setState(fn),
    context,
  );

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
              const ScreenTitleText(title: "Se connecter"),
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
                readOnly: connectionScreenHelper.loading,
                decoration: InputDecoration(helperText: "Mot de passe"),
                onChanged: (password) {
                  setState(() {
                    _request.motDePasse = password;
                  });
                },
              ).withPadding(bottom: 20),
              AppButton(
                text: "Connexion",
                callback: () => connectionScreenHelper.connexionButtonCallback(
                  () async => await connectionScreenHelper.service
                      .tryConnecting(_request),
                  () => context.mounted,
                ),
              ),
              NavButton(text: "S'inscrire", route: const RegisterScreen()),
              if (connectionScreenHelper.errorMessage != null)
                connectionScreenHelper.createErrorTextThere(),
            ],
          ),
        ),
      ),
    );
  }
}
