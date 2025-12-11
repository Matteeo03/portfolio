import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ----------------------------------
          // PLATFORM ITEMS — wygląd taki jak w desktop (bez tła)
          // ----------------------------------
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                for (int i = 0; i < platformItems.length; i++)
                  SizedBox(
                    width: 200,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 6.0,
                      ),
                      leading: Image.asset(
                        platformItems[i]["img"],
                        width: 26.0,
                      ),
                      title: Text(
                        platformItems[i]["title"],
                        style: const TextStyle(color: CustomColor.whitePrimary),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // ----------------------------------
          // SKILL ITEMS — bez Chipów, jak w desktop
          // ----------------------------------
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        skillItems[i]["img"],
                        width: 26.0,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        skillItems[i]["title"],
                        style: const TextStyle(
                          color: CustomColor.whitePrimary,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
