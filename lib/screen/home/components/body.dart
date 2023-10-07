
import 'package:flutter/material.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/models/Product.dart';
import 'package:newapp/screen/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // Check if textTheme or headlineMedium is null before calling copyWith
    final textStyle = textTheme.headlineMedium?.copyWith(
      fontWeight: FontWeight.bold,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: textStyle,
          ),
        ),
        Categories(),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
           child: GridView.builder(
             itemCount: products.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
             mainAxisSpacing: kDefaultPaddin,
             crossAxisSpacing: kDefaultPaddin,
             childAspectRatio: 0.75,
             ),
              itemBuilder: ( context , index) =>
                  ItemCard(product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                            product: products[index]
                            ),
                        )),
                  )),
         ),
       ),
      ],
    );
  }
}

