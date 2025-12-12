import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
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

          // ----------------------------------
          // GITHUB LINK (KLIKALNY)
          // ----------------------------------
          InkWell(
            onTap: () {
              // działa w web i desktop
              launchUrl(Uri.parse("https://github.com/Matteeo03/portfolio"));
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
