// lib/utils/project_generator.dart
import 'package:my_portfolio/utils/project_utils.dart';

final Map<String, List<String>> _imagesById = {
  'm1': ['assets/projects/pekinczyk_01.jpg', 'assets/projects/pekinczyk_02.jpg'],
  'm2': ['assets/projects/pekinczyk_food_01.jpg', 'assets/projects/pekinczyk_food_02.jpg'],
  'm3': ['assets/projects/pekinczyk_training_01.jpg', 'assets/projects/pekinczyk_training_02.jpg'],
  't1': ['assets/projects/pekinczyk_social_01.jpg', 'assets/projects/pekinczyk_social_02.jpg'],
  't2': ['assets/projects/pekinczyk_health_01.jpg', 'assets/projects/pekinczyk_health_02.jpg'],
};

final Map<String, List<String>> _techById = {
  'm1': ['Flutter', 'Dart', 'Provider'],
  'm2': ['Flutter', 'Dart', 'SQLite'],
  'm3': ['Flutter', 'Dart', 'Firebase'],
  't1': ['Flutter', 'Riverpod', 'Firebase'],
  't2': ['Flutter', 'Dart', 'REST API'],
};

List<String> _getImagesForId(String id) =>
    _imagesById[id] ?? const ['assets/projects/placeholder.png'];

List<String> _getTechForId(String id) =>
    _techById[id] ?? const ['Flutter', 'Dart'];

/// AUTOMATYCZNE GENEROWANIE KLUCZY
ProjectUtils _buildFromId(String id) {
  const prefix = 'project';

  return ProjectUtils(
    id: id,
    images: _getImagesForId(id),
    technologies: _getTechForId(id),

    /// 🔑 klucze i18n
    titleKey: '$prefix.$id.title',
    subtitleKey: '$prefix.$id.subtitle',
    descriptionKey: '$prefix.$id.description',
  );
}

Map<String, ProjectUtils> generateProjectsMap(List<String> ids) {
  return { for (final id in ids) id : _buildFromId(id) };
}

List<ProjectUtils> generateProjectsList(List<String> ids) {
  return ids.map(_buildFromId).toList();
}
