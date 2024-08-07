import 'package:currency/core/constants/const_sizes.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}


class _TestState extends State<Test> {
  static int soncha = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: ConstSizes.height(1, context)),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "1 USD = ${soncha} USZ",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "1 UZS = 1/USD",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
