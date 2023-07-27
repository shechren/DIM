import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: routes,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, '/first');
              },
              child: const Text("Button1"),
            ),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, '/second');
              },
              child: const Text("Button2"),
            ),
          ],
        )
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.indigo)
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.green)
        ),
      ),
    );
  }
}
