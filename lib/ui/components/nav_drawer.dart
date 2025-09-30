import 'package:flutter/material.dart';
import 'package:tp1_5n6/backend/AppService.dart';
import 'package:tp1_5n6/shared.dart';
import 'package:tp1_5n6/ui/screens/creation_screen.dart';
import 'package:tp1_5n6/ui/screens/home_screen.dart';
import 'package:tp1_5n6/ui/screens/login_screen.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              Shared.username,
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Accueil"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(username: Shared.username),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Ajout de tâche"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreationScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Déconnexion"),
            onTap: () async {
              final service = AppService();
              await service.tryDisconnecting();

              if (!context.mounted) return;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
