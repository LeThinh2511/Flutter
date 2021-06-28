import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/routes/state%20management/bloc/counter_bloc_model.dart';

class CounterBLoC extends StatelessWidget {
  const CounterBLoC({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBlocModel model = BlocProvider.of(context);
    print('reload');

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
                      model.add(const Increment());
                    },
                    child: const Text(
                      '+1',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 26
                      ),
                    )
                ),
                BlocBuilder<CounterBlocModel, CounterState>(builder: (BuildContext context, CounterState state) {
                  return Text(
                    '${state.count}',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26
                    ),
                  );
                }),
                TextButton(
                    onPressed: () {
                      model.add(const Decrement());
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