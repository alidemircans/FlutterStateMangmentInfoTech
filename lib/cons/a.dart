import 'package:flutter/material.dart';

class ABC {
  var a;
  var b;
  var c;
  ABC({
    this.a,
    this.b,
    this.c,
  });
}

class AView extends StatefulWidget {
  @override
  _AViewState createState() => _AViewState();
}

class _AViewState extends State<AView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Bview(
                abc: ABC(a: 'a', b: 'b', c: 'c'),
              ),
            ),
          );
        },
        child: Container(
          child: Text('Git'),
        ),
      ),
    );
  }
}

class Bview extends StatefulWidget {
  ABC abc;
  Bview({
    this.abc,
  });
  @override
  _BviewState createState() => _BviewState();
}

class _BviewState extends State<Bview> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
