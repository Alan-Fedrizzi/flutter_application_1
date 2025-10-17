import 'package:flutter/material.dart';
// import 'package:flutter_application_1/theme/colors.dart';
import 'theme/app_theme.dart';

import 'widgets/tp_button_solid/tp_button_solid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TpTheme.lightTheme,
      darkTheme: TpTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _disabled = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleFirstButton() {
    setState(() {
      _disabled = !_disabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TpButtonSolid(
              text: 'Click Me',
              tpDisabled: _disabled,
              onPressed: () {
                print('Button pressed!');
              },
            ),
            TpButtonSolid(
              text: _disabled
                  ? 'Enabled the first button'
                  : 'Disabled the first button',
              onPressed: _toggleFirstButton,
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
