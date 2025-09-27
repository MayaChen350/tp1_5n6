import 'package:flutter/material.dart';
import 'package:tp1_5n6/ui/screens/test_other_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtherScreen(),
                    ),
                  );
                }
              },
              child: const Text('Sign up'),
            ),
            ElevatedButton(
              onPressed: () {
                {
                  print('Login pressed');
                }
              },
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}