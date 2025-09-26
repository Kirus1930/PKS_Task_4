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
      appBar: AppBar(
        title: Text('Практика 4'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Значение счетчика: $counter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => counter -= 1,
                  onLongPress: () => counter -= 10,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text("Сбросить"),
                ),
                SizedBox(height: 15),

                GestureDetector(
                  onTap: increment,
                  onLongPress: () => counter += 10,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.lightGreen,
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
