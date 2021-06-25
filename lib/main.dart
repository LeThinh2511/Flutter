import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/routes/application.dart';
import 'package:flutter_demo/routes/state%20management/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/routes/state%20management/provider/counter_provider_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => CounterModel(),
    child: const CounterProvider(),
  ));
}

