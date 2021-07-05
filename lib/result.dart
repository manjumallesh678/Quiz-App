import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final VoidCallback reset;

  Result(this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You did it',
            style: TextStyle(fontSize: 30.0),
          ),
          RaisedButton(
            onPressed: reset,
            child: Text('Reset'),
          )
        ],
      ),
    );
  }
}
