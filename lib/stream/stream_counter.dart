import 'dart:async';

import 'package:flutter/material.dart';

class StreamCounter extends StatefulWidget {
  @override
  _StreamCounterState createState() => _StreamCounterState();
}

class _StreamCounterState extends State<StreamCounter> {
  var _count = 0;

  StreamController streamController = StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Stream',
            ),
            StreamBuilder(
              initialData: 0,
              stream: streamController.stream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            InkWell(
              onTap: () {
                streamController.sink.add(++_count);
              },
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Arttır',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                streamController.sink.add(--_count);
              },
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Azalt',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
