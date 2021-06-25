import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/state%20management/provider/counter_provider_model.dart';

class CounterProvider extends StatelessWidget {
  const CounterProvider({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterModel model = Provider.of<CounterModel>(context);

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
                      model.increment();
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
                  '${model.currentCount}',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26
                  ),
                ),
                TextButton(
                    onPressed: () {
                      model.decrement();
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
}