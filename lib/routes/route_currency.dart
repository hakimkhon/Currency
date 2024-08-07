import 'package:currency/models/currency_model_cbu.dart';
import 'package:currency/screens/convertion/convertion_page.dart';
import 'package:currency/screens/home/home_page.dart';
import 'package:currency/screens/splesh/splash_page.dart';
import 'package:flutter/material.dart';

class RouteCurrencyNames {
  static const String home = "/home";
  static const String splash = "/splash";
  static const String convertion = "/convertion";
}

class RouteCurrency {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteCurrencyNames.home:
        return MaterialPageRoute(
            builder: (context) => HomePage(
                currencyData: settings.arguments as List<CurrencyModelCbu>));
      case RouteCurrencyNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case RouteCurrencyNames.convertion:
        return MaterialPageRoute(builder: (context) => const ConvertionPage());
      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
