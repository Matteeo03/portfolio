import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Iterujemy przez wszystkie kategorie
            for (int i = 0; i < skillCategories.length; i++) ...[
              _buildSkillCategory(
                category: skillCategories[i]["category"],
                skills: skillCategories[i]["skills"],
              ),
              
              // Odstęp między kategoriami
              if (i < skillCategories.length - 1)
                const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  /// Widget dla pojedynczej kategorii umiejętności
  Widget _buildSkillCategory({
    required String category,
    required List<dynamic> skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Nagłówek kategorii
        Text(
          category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
            letterSpacing: 0.5,
          ),
        ),
        
        const SizedBox(height: 10),
        
        // Lista umiejętności w tej kategorii
        Wrap(
          spacing: 12, // odstęp poziomy między elementami
          runSpacing: 6, // odstęp pionowy gdy zawijają się do nowej linii
          children: skills.map((skill) {
            return Text(
              skill,
              style: const TextStyle(
                color: CustomColor.whiteSecondary,
                fontSize: 15,
                height: 1.4,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

// ============================================
// WARIANT Z BULLETAMI (jeśli wolisz kropki)
// ============================================

class SkillsDesktopWithBullets extends StatelessWidget {
  const SkillsDesktopWithBullets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < skillCategories.length; i++) ...[
              _buildSkillCategory(
                category: skillCategories[i]["category"],
                skills: skillCategories[i]["skills"],
              ),
              if (i < skillCategories.length - 1)
                const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCategory({
    required String category,
    required List<dynamic> skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 10),
        
        // Umiejętności rozdzielone średnikami lub kropkami
        Text(
          skills.join(' • '), // użyj • jako separator
          style: const TextStyle(
            color: CustomColor.whiteSecondary,
            fontSize: 15,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}

// ============================================
// WARIANT Z DWOMA KOLUMNAMI (dla szerszych ekranów)
// ============================================

class SkillsDesktopTwoColumns extends StatelessWidget {
  const SkillsDesktopTwoColumns({super.key});

  @override
  Widget build(BuildContext context) {
    // Podziel kategorie na dwie kolumny
    final halfLength = (skillCategories.length / 2).ceil();
    final leftColumn = skillCategories.sublist(0, halfLength);
    final rightColumn = skillCategories.sublist(halfLength);

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lewa kolumna
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var category in leftColumn) ...[
                    _buildSkillCategory(
                      category: category["category"],
                      skills: category["skills"],
                    ),
                    const SizedBox(height: 24),
                  ],
                ],
              ),
            ),
            
            const SizedBox(width: 60), // odstęp między kolumnami
            
            // Prawa kolumna
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var category in rightColumn) ...[
                    _buildSkillCategory(
                      category: category["category"],
                      skills: category["skills"],
                    ),
                    const SizedBox(height: 24),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCategory({
    required String category,
    required List<dynamic> skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          skills.join(' • '),
          style: const TextStyle(
            color: CustomColor.whiteSecondary,
            fontSize: 15,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}

// ============================================
// WARIANT Z IKONAMI (jeśli używasz skillCategoriesWithIcons)
// ============================================

class SkillsDesktopWithIcons extends StatelessWidget {
  const SkillsDesktopWithIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < skillCategoriesWithIcons.length; i++) ...[
              _buildSkillCategory(
                icon: skillCategoriesWithIcons[i]["icon"],
                category: skillCategoriesWithIcons[i]["category"],
                skills: skillCategoriesWithIcons[i]["skills"],
              ),
              if (i < skillCategoriesWithIcons.length - 1)
                const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCategory({
    required String icon,
    required String category,
    required List<dynamic> skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ikona + nagłówek
        Row(
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 10),
            Text(
              category,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        
        // Umiejętności
        Text(
          skills.join(' • '),
          style: const TextStyle(
            color: CustomColor.whiteSecondary,
            fontSize: 15,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}