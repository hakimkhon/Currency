import 'package:currency/core/constants/const_sizes.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key, required this.price, required this.currencyName});

  final double price;
  final String currencyName;

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
              "1 $currencyName = $price USZ",
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "1 UZS = ${checkPrice()} $currencyName",
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
  checkPrice(){
  try{
   return (1/price).toString().substring(0, 10);
  }catch(e){
    if(price == 0){
      return 0;
    }else{
      return 1/price;
    }

  }
  

}
}
