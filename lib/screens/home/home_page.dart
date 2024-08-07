import 'package:currency/models/currency_model_cbu.dart';
import 'package:currency/screens/widgets/item_list_view_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.currencyData});
  final List<CurrencyModelCbu> currencyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Container(
            width: double.infinity,
            color: Colors.black12,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemListViewHomePage(
                  code: currencyData[index].ccy.toString(),
                  rate: currencyData[index].rate.toString(),
                  title: currencyData[index].ccyNmUz.toString(),
                  diff: currencyData[index].diff.toString(),
                  onTap: () {},
                );
              },
            ),
          )),
    );
  }
}
