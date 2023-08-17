import 'package:flutter/material.dart';

import '../../constants.dart';
import 'banner_section.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: const Column(
              children: [
                Header(),
                SizedBox(
                  height: 50,
                ),
                BannerSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}