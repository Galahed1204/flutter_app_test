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
        Divider(
          height: 30.0,
          color: Colors.red.shade400,
        ),
        _indicatorsRow(),
        Divider(
          height: 50.0,
          color: Colors.red.shade400,
        ),
        const Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
        Divider(
          height: 20.0,
          color: Colors.red.shade400,
        ),
        _bottomDetail(),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            '14°F',
            style: TextStyle(fontSize: 50, color: Colors.white),
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

Row _indicatorsRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 20.0,
              )),
          const Text(
            '5',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const Text(
            'km/hr',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 20.0,
              )),
          const Text(
            '3',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            '%',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 20.0,
              )),
          const Text(
            '20',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            '%',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Container _bottomDetail() {
  return Container(
    height: 140,
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    child: ListView(
      scrollDirection: Axis.horizontal,
      //shrinkWrap: true,
      //itemExtent: 120,
      padding: const EdgeInsets.all(8.0),
      children: [
        SizedBox(
          height: 120,
          width: 160,
          child:
          ListTile(
            title: const Text('Friday',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            subtitle: const Text('6°F',
                style: TextStyle(fontSize: 26, color: Colors.white)),
            trailing: const Icon(Icons.sunny, color: Colors.white),
            tileColor: Colors.red.shade300,
          )
        ),
        const SizedBox(width: 8),
        SizedBox(
            height: 120,
            width: 160,
            child:
            ListTile(
              title: const Text('Saturday',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('5°F',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              trailing: const Icon(Icons.sunny, color: Colors.white),
              tileColor: Colors.red.shade300,
            )
        ),
        const SizedBox(width: 8),
        SizedBox(
            height: 120,
            width: 160,
            child:
            ListTile(
              title: const Text('Sunday',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('22°F',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              trailing: const Icon(Icons.sunny, color: Colors.white),
              tileColor: Colors.red.shade300,
            )
        ),
        const SizedBox(width: 8),
        SizedBox(
            height: 120,
            width: 160,
            child:
            ListTile(
              title: const Text('Monday',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('22°F',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              trailing: const Icon(Icons.sunny, color: Colors.white),
              tileColor: Colors.red.shade300,
            )
        ),
      ],
    ),
  );
}
