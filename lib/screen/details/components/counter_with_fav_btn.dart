import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Product.dart';
import '../../home/components/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  final Product product;  // Add product as a parameter

  const CounterWithFavBtn({
    Key? key,
    required this.product,  // Require product when creating CounterWithFavBtn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        CartCounter(product: product),
        Container(
          padding: EdgeInsets.all(7),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}