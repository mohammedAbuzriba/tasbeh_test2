import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String name = 'سبحان الله';

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter <= 33) {
        name = 'سبحان الله';
      } else if (_counter > 33 && _counter <= 66) {
        name = 'الحمد لله';
      } else if (_counter > 66 && _counter <= 99) {
        name = 'الله اكبر';
      } else if (_counter == 100) {
        name = 'لا اله الا الله';
      } else {
        _counter = 0;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 48,
            ),
            ElevatedButton(
              onPressed: _resetCounter,
              child: const Text("اعادة"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
