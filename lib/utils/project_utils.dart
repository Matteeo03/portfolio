import 'package:my_portfolio/utils/project_generator.dart';

class ProjectUtils {
  final String id;
  final List<String> images;
  final List<String> technologies;

  /// KLUCZE TŁUMACZEŃ
  final String titleKey;
  final String subtitleKey;
  final String descriptionKey;

  const ProjectUtils({
    required this.id,
    required this.images,
    required this.technologies,
    required this.titleKey,
    required this.subtitleKey,
    required this.descriptionKey,
  });
}

final myProjectIds = ['m1', 'm2', 'm3'];
final teamProjectIds = ['t1', 't2'];

final List<ProjectUtils> myProjectUtils = generateProjectsList(myProjectIds);
final List<ProjectUtils> teamProjectUtils = generateProjectsList(teamProjectIds);

// lub mapa:
// final Map<String, ProjectUtils> projectsMap = generateProjectsMap([...myProjectIds, ...teamProjectIds]);
