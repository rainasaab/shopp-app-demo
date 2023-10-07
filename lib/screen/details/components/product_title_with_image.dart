import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
    required this.textStyle,
    required this.textStyle2,
  });

  final Product product;
  final TextStyle? textStyle;
  final TextStyle? textStyle2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Aristractic Hand Bag",

            style: TextStyle(color: Colors.white,
            ),
          ),
          Text(product.title,
              style: textStyle
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(text: "\$${product.price}",style: textStyle2)

                    ]
                ),
              ),
              SizedBox(width: kDefaultPaddin,),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(

                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          )


        ],
      ),
    );
  }
}