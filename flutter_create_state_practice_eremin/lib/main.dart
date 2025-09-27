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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Значение счетчика: $counter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text("Сбросить"),
                ),
                SizedBox(width: 15),

                GestureDetector(
                  onTap: increment,
                  onLongPress: () {
                    setState(() {
                      counter += 10;
                    });
                  },
                  child: Container(
                    width: 110,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.lightGreen,
                    ),
                    child: Center(child: Text("Увеличить")),
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
