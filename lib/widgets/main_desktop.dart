import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1000, // <<< NAJWAŻNIEJSZE!
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          height: screenHeight / 1.2,
          constraints: const BoxConstraints(minHeight: 350.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Hi,\nI'm Lucynka\nA Flutter Developer",
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 12),
                    RichText(
                      textAlign: TextAlign.justify,
                      textWidthBasis: TextWidthBasis.longestLine,
                      text: const TextSpan(
                        text: "Jak dasz pracę to podam łapkę. \n\n"
                              "Pekińczyk – jedna z ras psów należąca do grupy "
                              "psów do towarzystwa, zaklasyfikowana do sekcji "
                              "spanieli japońskich i pekińczyków. Typ jamnikowaty. "
                              "Nie podlega próbom pracy.\n\n"
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                              "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                              "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                              "nisi ut aliquip ex ea commodo consequat.\n",
                        style: TextStyle(
                          fontSize: 17,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Image.asset(
                "assets/Luska_transparency.webp",
                width: (screenWidth * 0.25).clamp(300.0, 500.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
