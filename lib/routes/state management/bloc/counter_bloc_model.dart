import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];
}
class Increment extends CounterEvent {
  const Increment();
}
class Decrement extends CounterEvent {
  const Decrement();
}

class CounterState extends Equatable {
  const CounterState(this.count);

  final int count;

  @override
  List<Object> get props => [count];
}

class CounterBlocModel extends Bloc<CounterEvent, CounterState> {
  CounterBlocModel() : super(const CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      final int newCount = state.count + 1;
      yield CounterState(newCount);
    } else if (event is Decrement) {
      final int newCount = state.count - 1;
      yield CounterState(newCount);
    }
  }
}