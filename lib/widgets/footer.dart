import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';
import '../constants/personal_info.dart';
import '../constants/sns_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {

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
              const Text(
                "✉ Mail me",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(width: 8),

              // COPY BUTTON
              Tooltip(
                message: "Copy e-mail",
                child: IconButton(
                  icon: const Icon(Icons.copy, color: CustomColor.whitePrimary),
                  onPressed: () {
                    // Email is securely encoded by the contactAddress method using Base64; see details in personal_info.dart
                    Clipboard.setData(ClipboardData(text: PersonalInfo.contactAddress));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("E-mail address copied!"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // ----------------------------------
          // GITHUB LINK (KLIKALNY)
          // ----------------------------------
          InkWell(
            onTap: () {
              // działa w web i desktop
              launchUrl(Uri.parse(SnsLinks.github));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/github.png",
                  width: 20,
                  height: 20,
                  color: CustomColor.whiteSecondary,
                ),
                const SizedBox(width: 8),
                const Text(
                  "View source on GitHub",
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColor.whiteSecondary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 22),

          // ---- INFO TEXT ----
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                height: 1.4,
                color: CustomColor.whiteSecondary,
                fontSize: 14,
              ),
              children: [
                const TextSpan(
                  text: "Made by Lucynka — based on a template by Shohruh AK\n"
                      "Significantly modified and rebuilt with ",
                ),

                // IKONKA FLUTTERA
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Image.asset(
                    "assets/flutter.png",
                    height: 16, // dopasuj w razie potrzeby
                  ),
                ),

                const TextSpan(
                  text: " Flutter 3.38.4\n© 2025 Lucynka. This project is open-source (MIT).",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
