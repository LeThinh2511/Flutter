import 'dart:math';
import 'package:flutter/material.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${Random().nextInt(20)}'),
      ),
    ); }
}