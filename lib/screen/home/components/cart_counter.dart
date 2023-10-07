import 'package:flutter/material.dart';
import 'package:newapp/models/Product.dart';


import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  final Product product;
  const CartCounter({Key? key, required this.product}) : super(key: key);


  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {



  int numofitems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildElevatedButton(
          icon: Icons.remove,
          press: (){
            if(numofitems>1){
              setState(() {
                numofitems--;
              });
            }
          },


        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2 ),

          child: Text(
              numofitems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headlineSmall
          ),

        ),

        buildElevatedButton(
          icon: Icons.add,
          press: () {
            setState(() {

              numofitems++;
            });
          },





        ),
      ],
    );
  }

  SizedBox buildElevatedButton({
    IconData? icon,
    void Function () ? press,
    Color? iconColor,
    Color? backgroundColor }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: ElevatedButton(


        style: ElevatedButton.styleFrom(
            padding:EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
            ),
          primary: widget.product.color,

              ),
        onPressed: press  ,
        child: Icon(icon,color: iconColor,),
      ),
    );
  }
}
