import 'package:flutter/material.dart';
import 'package:batiktrang/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }





  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "ตะกร้าของคุณ",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "ทั้งหมด ${demoCarts.length} รายการ",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
