library;

/// Domain model representing a single portfolio project.
/// This class is intentionally simple and immutable.
///
/// It does NOT:
/// - perform any logic
/// - know about localization implementations
/// - depend on Flutter widgets
class Project {
  /// Unique project identifier (e.g. "m1", "t2")
  final String id;

  /// Image asset paths used in galleries or sliders
  final List<String> images;

  /// Optional i18n keys for image captions (index-aligned with [images])
  final List<String>? imageCaptionKeys;

  /// Technologies used in the project (displayed as a list)
  final List<String> technologies;

  /// Internationalization keys
  final String titleKey;
  final String subtitleKey;
  final String descriptionKey;

  const Project({
    required this.id,
    required this.images,
    this.imageCaptionKeys,
    required this.technologies,
    required this.titleKey,
    required this.subtitleKey,
    required this.descriptionKey,
  });
}

