import 'package:flutter/material.dart';

import '../../constants.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Services(
          image: "assets/images/delivery_boy.jpg",
          title: "Fastest Delivery",
        ),
        Services(
          image: "assets/images/menu.jpg",
          title: "So Much to Choose From",
        ),
        Services(
          image: "assets/images/offer.jpg",
          title: "Best offer in Town",
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key, required this.image, required this.title});

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: const EdgeInsets.all(kPadding / 2),
          child: Column(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Text(
                "We offer delicious ready meals\n and delicious recipes,",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
