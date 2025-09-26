import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практика 4',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 42, 200, 11)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Практика 4')),
      body: Center(
        child: Column(
          children: [
            Text("Значение счетчика: $count"),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => print(""),
                  child: Text("Уменьшить"),
                ),
                GestureDetector(
                  onTap: () => print(""),
                  onLongPress: () => print(""),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
