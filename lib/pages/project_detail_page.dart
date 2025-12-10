import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/constants/colors.dart';

class ProjectDetailPage extends StatelessWidget {
  final ProjectUtils project;
  const ProjectDetailPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
        backgroundColor: CustomColor.bgLight2,
        elevation: 0,
      ),
      backgroundColor: CustomColor.scaffoldBg,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // obraz
            Image.asset(project.image, fit: BoxFit.contain),
            const SizedBox(height: 20),

            // tytuł
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                project.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // opis (description lub subtitle)
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                (project.description ?? project.subtitle),
                style: const TextStyle(
                  fontSize: 16,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Jedyny przycisk: Wróć (styl kafelkowy) ---
            Align(
              alignment: Alignment.centerLeft,
              child: _backButton(context),
            ),
          ],
        ),
      ),
    );
  }

  // --- Przycisk WRÓĆ w stylu kafelków ---
  Widget _backButton(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () => Navigator.pop(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 12.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_back, color: Colors.white, size: 20),
              SizedBox(width: 12),
              Text(
                "Wróć",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
