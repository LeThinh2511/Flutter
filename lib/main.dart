import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/routes/application.dart';
import 'package:flutter_demo/routes/state%20management/bloc/counter_bloc.dart';
import 'package:flutter_demo/routes/state%20management/bloc/counter_bloc_model.dart';
import 'package:flutter_demo/routes/state%20management/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/routes/state%20management/provider/counter_provider_model.dart';

void main() {
  runApp(BlocProvider<CounterBlocModel>(
    create: (BuildContext context) => CounterBlocModel(),
    child: const CounterBLoC(),
  ));
}

