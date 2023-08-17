import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../model/responsive.dart';
import 'menu.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      padding: const EdgeInsets.only(
        right: kPadding,
        left: kPadding,
        bottom: kPadding,
        top: 50,
      ),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Foodie",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: kSecondaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialIcon(
                          icon: "assets/icons/google-icon.svg",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SocialIcon(
                          icon: "assets/icons/facebook-2.svg",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SocialIcon(
                          icon: "assets/icons/twitter.svg",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if(Responsive.isDesktop(context)) const Expanded(
                flex: 3,
                child: HeaderWebMenu(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}





class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
