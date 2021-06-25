import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateManagementDemoState();
  }
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 100,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [
                TextButton(
                    onPressed: () {
                      _increase();
                    },
                    child: const Text(
                      '+1',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 26
                      ),
                    )
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26
                  ),
                ),
                TextButton(
                    onPressed: () {
                      _decrease();
                    },
                    child: const Text(
                      '-1',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 26
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
    });
  }
}