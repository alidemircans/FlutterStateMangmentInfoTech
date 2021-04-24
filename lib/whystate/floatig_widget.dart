import 'package:flutter/material.dart';

class FloatingWiget extends StatefulWidget {
  //var counter;
  Function incrementCounter;
  FloatingWiget({@required this.incrementCounter});
  @override
  _FloatingWigetState createState() => _FloatingWigetState();
}

class _FloatingWigetState extends State<FloatingWiget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
