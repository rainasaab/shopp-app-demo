import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:newapp/constants.dart';
import 'package:newapp/models/Product.dart';
import 'package:newapp/screen/details/components/product_title_with_image.dart';


import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key ? key, required this.product}): super(key : key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headlineMedium?.copyWith(color: Colors.white,
        fontWeight: FontWeight.bold);

    final textStyle2 = textTheme.headlineLarge?.copyWith(color: Colors.white,
        fontWeight: FontWeight.bold);

    final textStyle3 = textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold);



    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,

                  ),
                  height: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product, textStyle3: textStyle3),
                      SizedBox(height: kDefaultPaddin ),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin ),
                      CounterWithFavBtn(product: product),
                      SizedBox(height: kDefaultPaddin ),
                      SizedBox(height: kDefaultPaddin ),
                      AddToCart(product: product)
                    ],
                  ),
                 ),
                ProductTitleWithImage(product: product, textStyle: textStyle, textStyle2: textStyle2)



              ],
            ),
          )


        ],
      ),
    );
  }
}








