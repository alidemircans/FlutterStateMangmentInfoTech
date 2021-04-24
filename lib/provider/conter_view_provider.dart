import 'package:flutter/material.dart';
import 'package:statetutorial/provider/counter_provider.dart';
import 'package:statetutorial/provider/provider_flaot.dart';
import 'package:provider/provider.dart';

class CounterViewProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counterProver = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'PROVİDER',
              ),
              Text(
                counterProver.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              InkWell(
                onTap: () {
                  counterProver.arttir();
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
                  counterProver.azalt();
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
      ),
      floatingActionButton: FloatingProviderWiget(),
    );
  }
}
