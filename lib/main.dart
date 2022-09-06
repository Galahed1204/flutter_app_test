
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AnimatedState()),
      ],
      child: const MyApp(),
    ));

class AnimatedState with ChangeNotifier {
  bool _state = false;

  bool get state => _state;

  void reverseState() {
    _state = !_state;
    print(_state);
    notifyListeners();
  }

// /// Makes `Counter` readable inside the devtools by listing all of its properties
// @override
// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//   super.debugFillProperties(properties);
//   properties.add(FlagProperty('state', state));
// }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AnimatedWidget());
  }
}

class AnimatedWidget extends StatelessWidget {
  AnimatedWidget({Key? key}) : super(key: key);
  final rng = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homework Provider',
          style: TextStyle(
            color: context.watch<AnimatedState>().state
                ? Color(rng.nextInt(0xFF000000))
                : Color(rng.nextInt(0xFF000000)),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 200.0,
              height: 200.0,
              color: context.watch<AnimatedState>().state
                  ? Color(rng.nextInt(0xFF000000))
                  : Color(rng.nextInt(0xFF000000)),
              duration: const Duration(seconds: 2),
              //child: const FlutterLogo(size: 75),
            ),
            Switch(
                value: context.watch<AnimatedState>().state,
                onChanged: (bool value) {
                  context.read<AnimatedState>().reverseState();
                }),
          ],
        ),
      ),
    );
  }
}

