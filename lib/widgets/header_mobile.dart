import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    required this.onMenuTap,
  });

  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,

      // Tło + cień dla lepszej widoczności
      decoration: BoxDecoration(
        color: CustomColor.scaffoldBg,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),

      child: Row(
        children: [
          // Pusta przestrzeń po lewej
          const Spacer(),

          // PRZYCISK MENU (hamburger) po prawej stronie
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(
              Icons.menu,
              color: CustomColor.whitePrimary,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}