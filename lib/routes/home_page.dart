import 'package:flutter/material.dart';
import 'package:flutter_demo/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(RouteGenerator.randomPage);
          },
          child: const Text('Random'),
        ),
      ),
    );
  }
}
