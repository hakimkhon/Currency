import 'package:currency/core/resources/resource_assets.dart';
import 'package:currency/services/service_api.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ServiceApi.getCurrency(context),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            return Center(
              child: Lottie.asset(LottieAssets.lottieSpalsh),
            );
          }),
    );
  }
}
