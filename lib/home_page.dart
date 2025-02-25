import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Counter App'),
      ),
      body: counterWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          floatingActionButtonMethod(),
          SizedBox(width: 10),
          floatingActionButtonMethodTwo(),
        ],
      ),
    );
  }

  Center counterWidget() {
    return Center(
      child: Text(
        'Counter: $_counter',
        style: TextStyle(fontSize: 32),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  FloatingActionButton floatingActionButtonMethodTwo() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      child: Icon(Icons.add),
    );
  }

  FloatingActionButton floatingActionButtonMethod() {
    return FloatingActionButton(
      onPressed: _decrementCounter,
      child: Icon(Icons.remove),
    );
  }
}
