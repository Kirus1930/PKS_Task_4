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
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Практика 4')),
      body: Center(
        child: Column(
          children: [
            Text("Значение счетчика: $counter"),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => print(""),
                  onLongPress: () => print(""),
                  child: Text("Сбросить"),
                ),
                GestureDetector(
                  onTap: () => print(""),
                  onLongPress: () => print(""),
                  child: Container(
                    width: 20,
                    height: 20,
                    child: Text("Увеличить"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
