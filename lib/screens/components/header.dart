import 'package:flutter/material.dart';
import 'package:food_ordering_website/model/responsive.dart';
import '../../constants.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context)) IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        const Text(
          "Foodie",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: kSecondaryColor),
        ),
        const Spacer(),
        if(Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10,top: 2,right: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.withOpacity(0.3))),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search,color: kSecondaryColor),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: const Icon(Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}