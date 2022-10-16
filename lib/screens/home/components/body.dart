import 'package:flutter/material.dart';
import 'package:flutter_application_1/constatns.dart';
import 'package:flutter_application_1/screens/home/components/discount_banner.dart';
import 'package:flutter_application_1/screens/home/components/home_header.dart';
import 'package:flutter_application_1/screens/home/components/icon_btn_with_counter.dart';
import 'package:flutter_application_1/screens/home/components/popular_product.dart';
import 'package:flutter_application_1/screens/home/components/search_field.dart';
import 'package:flutter_application_1/screens/home/components/special_offers.dart';
import 'package:flutter_application_1/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
