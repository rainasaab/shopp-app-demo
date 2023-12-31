import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg",
            color: kTextColor

        ),
          onPressed: () {},
        ),

        actions: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/icons/search.svg",
            color: kTextColor,
          ),

            onPressed: () {},
          ),
          IconButton(icon: SvgPicture.asset("assets/icons/cart.svg",
            color: kTextColor,
          ),

            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2),
        ],
    );
  }
}