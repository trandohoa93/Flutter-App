import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';
import 'package:flutter_application_1/screens/home/components/section_title.dart';
import 'package:flutter_application_1/size_config.dart';

import '../../../components/product_card.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                          context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[index])),
                    );

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
