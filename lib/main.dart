import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);

  _incriment() {
    _counter.value = _counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            //!important

            ValueListenableBuilder(
                valueListenable: _counter,
                builder: (BuildContext ctx, int newValue, Widget? child) {
                  return Text(newValue.toString());
                }),
            //!important

            ElevatedButton(
                onPressed: () {
                  btmSheet(context);
                },
                child: Text('Button'))
          ],
        ),
      ),
    );
  }

  Future<void> btmSheet(BuildContext ctx) async {
    showModalBottomSheet(
        context: ctx,
        builder: (ctx1) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: ListView(children: [
              Text('Hello'),
              Center(
                child: ElevatedButton(
                  child: Text('CLOSE'),
                  onPressed: () => Navigator.of(ctx1).pop(),
                ),
              )
            ]),
          );
        });
  }
}
