// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:insurance_app/core/router_constants.dart';

import 'package:insurance_app/views/insurance/insurance_view.dart' as view0;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case insuranceViewRoute:
        return MaterialPageRoute(builder: (_) => view0.InsuranceView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}