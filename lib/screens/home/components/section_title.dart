import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "เพิ่มเติม",
            style: TextStyle(color: kTextColorWhite),
          ),
        ),
      ],
    );
  }
}
