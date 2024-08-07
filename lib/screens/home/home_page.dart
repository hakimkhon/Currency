// import 'package:currency/core/constants/const_sizes.dart';
import 'package:currency/models/currency_model_cbu.dart';
import 'package:currency/screens/widgets/item_list_view_home_page.dart';
// import 'package:currency/screens/widgets/my_test.dart';
import 'package:currency/screens/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.currencyData});
  final List<CurrencyModelCbu> currencyData;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentPrice = 0;
  String currentCurrencyName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: TestWidget(
                    currencyName: currentCurrencyName, price: currentPrice),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.black12,
                  child: ListView.builder(
                    itemCount: widget.currencyData.length,
                    itemBuilder: (context, index) {
                      return ZoomTapAnimation(
                        onTap: () {
                          // print(widget.currencyData.length);
                          currentCurrencyName =
                              widget.currencyData[index].ccy.toString();
                          currentPrice =
                              double.parse(widget.currencyData[index].rate!);
                          setState(() {});
                        },
                        child: ItemListViewHomePage(
                          code: widget.currencyData[index].ccy.toString(),
                          rate: widget.currencyData[index].rate.toString(),
                          title: widget.currencyData[index].ccyNmUz.toString(),
                          diff: widget.currencyData[index].diff.toString(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
