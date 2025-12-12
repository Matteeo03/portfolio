import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    const email = "lucy_klusi@gmail.com";

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ---- EMAIL + COPY BUTTON ----
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SelectableText(
                email,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(width: 8),

              // COPY ICON
              Tooltip(
                message: "Copy e-mail",
                child: IconButton(
                  icon: const Icon(Icons.copy, color: CustomColor.whitePrimary),
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: email));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Copied!"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // ---- INFO TEXT ----
          const Text(
            "Made by Lucynka — based on a template by Shohruh AK\n"
            "Significantly modified and rebuilt with Flutter 3.38.4\n"
            "© 2024 Lucynka. All rights reserved.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              height: 1.4,
              color: CustomColor.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}