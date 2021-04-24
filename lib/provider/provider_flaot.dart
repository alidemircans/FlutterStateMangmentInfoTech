import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statetutorial/provider/counter_provider.dart';

class FloatingProviderWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<CounterProvider>().arttir();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
