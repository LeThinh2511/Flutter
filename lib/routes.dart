import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/home_page.dart';
import 'package:flutter_demo/routes/random_page.dart';

class RouteGenerator {
  RouteGenerator._();

  static const String homePage = '/';
  static const String randomPage = '/random';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute<HomePage>(
          builder: (_) => const HomePage(),
        );
      case randomPage:
        return MaterialPageRoute<RandomPage>(
          builder: (_) => const RandomPage(),
        );
      default:
        throw const FormatException('Route not found');
    }
  }
}

class RouteException implements Exception {
  const RouteException(this.message);

  final String message;
}
