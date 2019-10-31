import 'package:flutter/material.dart';

class PagInicio extends StatefulWidget {
  PagInicio({Key key}) : super(key: key);
  @override
  _PagInicioState createState() => new _PagInicioState();
}

class _PagInicioState extends State<PagInicio> {
    @override
    Widget build(BuildContext context) {
      return new Container(
        margin: const EdgeInsets.fromLTRB(10.0,60.0,10.10,10.0),
        child: new ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        )
      );
    }
}