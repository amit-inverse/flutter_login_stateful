import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        body: Text('Show a form here!'),
      ),
    );
  }
}
