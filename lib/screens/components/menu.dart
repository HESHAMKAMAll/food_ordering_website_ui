import 'package:flutter/material.dart';

import '../../constants.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: (){},
          title: "Menu",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: (){},
          title: "For Riders",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: (){},
          title: "About",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: (){},
          title: "Reviews",
        ),
        const SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: (){},
          title: "Restaurants",
        ),
      ],
    );
  }
}



class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key,required this.press,required this.title});
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
}
