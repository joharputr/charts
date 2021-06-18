import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamsExample extends StatefulWidget {
  const StreamsExample({Key? key}) : super(key: key);

  @override
  _StreamsExampleState createState() => _StreamsExampleState();
}

Stream<double> getRandomValue() async* {
  var random = Random(2);
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextDouble();
  }
}

class _StreamsExampleState extends State<StreamsExample> {
  StreamController<double> controller = StreamController<double>();

  @override
  void initState() {
    // getRandomValue().listen((event) {
    //   print("listEvent = ${event}");
    // });

    Stream stream = controller.stream;
    controller.add(12);
    stream.listen((event) {
      print("listen = $event");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Test(
          func: () {
            print("dede");
          },
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  final Function func;

  Test({required this.func});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.red,
          onPressed: () => this.widget.func(),
        ),
      ),
    );
  }
}
