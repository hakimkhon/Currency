import 'package:currency/core/constants/const_urls.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemListViewHomePage extends StatelessWidget {
  const ItemListViewHomePage({
    super.key,
    required this.code,
    required this.rate,
    required this.title,
    required this.diff,
    required this.onTap,
  });
  final String code;
  final String rate;
  final String title;
  final String diff;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap(),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage("${ConstUrls.urlApiFlagsWaving}${code.substring(0, 2).toLowerCase()}.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "AED",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  // VerticalDivider(color: Colors.white, width: 10,),
                  Text(
                    "15204",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Uzbekistan",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
