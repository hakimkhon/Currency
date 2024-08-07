import 'package:currency/core/constants/const_sizes.dart';
import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key, this.title = "", this.son = 1});
  final String title;
  final double son;

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
              "1 $title = $son USZ",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "1 UZS = ${1/son} USD",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
