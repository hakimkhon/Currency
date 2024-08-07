import 'package:currency/core/constants/const_sizes.dart';
import 'package:currency/models/currency_model_cbu.dart';
import 'package:currency/screens/widgets/item_list_view_home_page.dart';
import 'package:currency/screens/widgets/my_test.dart';
import 'package:currency/screens/widgets/test.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.currencyData});
  final List<CurrencyModelCbu> currencyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: Test(),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.black12,
                  child: ListView.builder(
                    itemCount: currencyData.length,
                    itemBuilder: (context, index) {
                      return ItemListViewHomePage(
                        code: currencyData[index].ccy.toString(),
                        rate: currencyData[index].rate.toString(),
                        title: currencyData[index].ccyNmUz.toString(),
                        diff: currencyData[index].diff.toString(),
                        //Savol keyingi saxifaga o'tganda xatolik beryapti
                        // onTap: () {
                        //   chooseTitle = currencyData[index].ccy.toString();
                        //   choosePrise = currencyData[index].rate.toString();
                        //   // Navigator.pushNamedAndRemoveUntil(context, RouteCurrencyNames.convertion, (Route<dynamic> route) => false);
                        // },
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
