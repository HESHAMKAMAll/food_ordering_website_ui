import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const AutoSizeText(
                "Eat today",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const AutoSizeText(
                "Live anther day",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 56,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We offer delicious ready meals and delicious recipes, We have a wide variety of dishes to choose from, so you're sure to find something you love. \n whether you're looking for a quick and easy meal or something more elaborate, we have you covered, we also offer delivery, so you can enjoy our delicious food at home, Come see us today and experience the difference!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, top: 2, right: 10),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.3))),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.adjust_rounded,
                        color: kSecondaryColor),
                    hintText: "Search your favourite food",
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      height: 55,
                      color: kSecondaryColor,
                      child: const Text(
                        "Delivery",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Or",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: kSecondaryColor,
                          ),
                        ),
                        child: const Text(
                          "Pick Up",
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset('assets/images/banner.png'),
            ],
          ),
        ),
      ],
    );
  }
}