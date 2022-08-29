// import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade400,
        ),
        body: _buildBody(),
        backgroundColor: Colors.red.shade400,
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 20,
                color: Colors.white,
              ),
            ),
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                labelStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
            )),
          ],
        ),
        Divider(
          color: Colors.red.shade400,
        ),
        const Text(
          'Murmansk Oblast, RU',
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
        Divider(
          color: Colors.red.shade400,
        ),
        const Text(
          'Friday, May 20, 2020',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
        Divider(
          height: 30.0,
          color: Colors.red.shade400,
        ),
        _weatherDescription(),
      ],
    ),
  );
}

Row _weatherDescription() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.sunny,
            color: Colors.white,
            size: 60.0,
          )),
      const SizedBox(width: 40.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '14°F',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(fontSize: 16, color: Colors.white),
          )
        ],
      )
    ],
  );
}

class CounterWidget extends StatefulWidget {
  CounterWidget({Key? key, required this.title, required this.centerTitle})
      : super(key: key);

  final String title;
  bool centerTitle;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: widget.centerTitle,
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tap "-" to decrement',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 130.0, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: _decreaseCounter),
                    Text('$_count'),
                    IconButton(
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.add)),
                  ],
                ),
              ),
              const Text(
                'Tap "+" to increment',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
