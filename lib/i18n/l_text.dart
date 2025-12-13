import 'package:flutter/material.dart';
import 'strings.dart';
import 'locale_controller.dart';
import '../constants/colors.dart';

class LText extends StatelessWidget {
  final String keyName;
  final TextStyle? style;
  final TextAlign? textAlign;

  const LText(
    this.keyName, {
    super.key,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: localeNotifier,
      builder: (_, __, ___) {
        return Text(
          t(keyName),
          style: style,
          textAlign: textAlign,
        );
      },
    );
  }
}

class LRichText extends StatelessWidget {
  final String leftKey;      // klucz tekstu po lewej stronie ikonki
  final String rightKey;     // klucz tekstu po prawej stronie ikonki
  final String iconAsset;    // np. "assets/flutter.png"
  final double iconHeight;
  final TextStyle? style;

  const LRichText({
    super.key,
    required this.leftKey,
    required this.rightKey,
    required this.iconAsset,
    this.iconHeight = 16,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    // nasłuchujemy zmiany języka
    return ValueListenableBuilder<String>(
      valueListenable: localeNotifier,
      builder: (_, __, ___) {
        final left = t(leftKey);
        final right = t(rightKey);

        final baseStyle = style ??
            const TextStyle(
              fontWeight: FontWeight.w400,
              height: 1.4,
              color: CustomColor.whiteSecondary,
              fontSize: 14,
            );

        // Jeśli chcesz, by tekst był zaznaczalny (kopiowalny), użyj SelectableText.rich
        return RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: baseStyle,
            children: [
              TextSpan(text: left),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Image.asset(
                    iconAsset,
                    height: iconHeight,
                  ),
                ),
              ),
              TextSpan(text: right),
            ],
          ),
        );
      },
    );
  }
}
