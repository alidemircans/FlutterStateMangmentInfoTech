import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statetutorial/bloc/bloc_pattern/counter_bloc.dart';
import 'package:statetutorial/bloc/bloc_pattern/counter_event.dart';
import 'package:statetutorial/bloc/bloc_pattern/counter_state.dart';

class BlocCounterView extends StatefulWidget {
  @override
  _BlocCounterViewState createState() => _BlocCounterViewState();
}

class _BlocCounterViewState extends State<BlocCounterView> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bloc'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            InkWell(
              onTap: () {
                // streamController.sink.add(++_count);
                BlocProvider.of<CounterBloc>(context).add(CounterInc());
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
                // streamController.sink.add(--_count);
                BlocProvider.of<CounterBloc>(context).add(CounterDec());
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
