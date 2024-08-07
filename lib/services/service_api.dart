import 'package:currency/core/constants/const_urls.dart';
import 'package:currency/models/currency_model_cbu.dart';
import 'package:currency/routes/route_currency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceApi {
  static Future<CurrencyModelCbu?> getCurrency(context) async {
    try {
      Response res = await Dio().get(ConstUrls.urlApiCBU);
      List<CurrencyModelCbu> list =
      (res.data as List).map((e) => CurrencyModelCbu.fromJson(e)).toList();
      
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteCurrencyNames.home,
        (Route<dynamic> route) => false,
        arguments: list,

      );
    } catch (e) {
      // ignore: avoid_print
      print("Error: $e");
    }
    return null;
  }

  // static Future<CurrencyModelCbu?> getCurrency(context) async {
  //   try {
  //     Response res = await Dio().get(ConstUrls.urlApiCBU);
  //     (res.data as List).map((e) => CurrencyModelCbu.fromJson(e)).toList();
  //     Navigator.pushNamedAndRemoveUntil(
  //       context,
  //       RouteCurrencyNames.home,
  //       (predicate) => false,
  //     );
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print("Error: $e");
  //   }
  //   return null;
  // }
}

/**

  static Future<CurrencyModelCbu?> getCurrency(context) async {
    try {
      Response res = await Dio().get(ConstUrls.urlApiCBU);
      List<CurrencyModelCbu> list =
          (res.data as List).map((e) => CurrencyModelCbu.fromJson(e)).toList();
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteCurrencyNames.home,
        (predicate) => false,
      );
    } catch (e) {
      print("Error: $e");
    }
  }
  
 */
