import 'package:flutter/material.dart';
import 'package:food_ordering_website/screens/components/product.dart';
import 'package:food_ordering_website/screens/components/services_card.dart';

import '../../constants.dart';
import '../../model/product_model.dart';
import 'email_banner.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          const ServicesCard(),
          GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: products.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) => Products(
              press: () {},
              product: products[index],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const EmailBanner(),
        ],
      ),
    );
  }
}