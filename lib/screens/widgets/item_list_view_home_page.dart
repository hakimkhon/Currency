import 'package:currency/core/constants/const_sizes.dart';
import 'package:currency/core/constants/const_urls.dart';
import 'package:currency/screens/widgets/my_test.dart';
import 'package:currency/screens/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemListViewHomePage extends StatelessWidget {
  const ItemListViewHomePage({
    super.key,
    required this.code,
    required this.rate,
    required this.title,
    required this.diff,
    // required this.onTap,
  });
  final String code;
  final String rate;
  final String title;
  final String diff;
  // final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        MyTest(son: double.parse(rate), title: code,);
      },
      child: Container(
        height: ConstSizes.height(11, context),
        margin:
            EdgeInsets.symmetric(horizontal: ConstSizes.width(0.2, context)),
        child: Card(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: NetworkImage(
                        "${ConstUrls.urlApiFlagsWaving}${code.substring(0, 2).toLowerCase()}.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(right: ConstSizes.width(1, context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            code,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            maxLines: 2,
                          ),
                        ],
                      ),
                      // VerticalDivider(color: Colors.white, width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            rate,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          if (diff.startsWith("-"))
                            Text(diff,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red))
                          else
                            Text(diff,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
