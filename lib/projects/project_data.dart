library;

/// Static project-related data used by the portfolio.
/// This file contains:
/// - mappings of project IDs to assets and technologies
/// - lists of project IDs used for categorization (personal / team)
///
/// No UI or business logic should live here.

/// Mapping of project IDs to their associated image asset paths.
final Map<String, List<String>> projectImages = {
  'm1': [
    'assets/projects/pekinczyk_01.jpg',
    'assets/projects/pekinczyk_02.jpg',
  ],
  'm2': [
    'assets/projects/pekinczyk_food_01.jpg',
    'assets/projects/pekinczyk_food_02.jpg',
  ],
  'm3': [
    'assets/projects/pekinczyk_training_01.jpg',
    'assets/projects/pekinczyk_training_02.jpg',
  ],
  't1': [
    'assets/projects/pekinczyk_social_01.jpg',
    'assets/projects/pekinczyk_social_02.jpg',
  ],
};

/// Mapping of project IDs to their technology stacks.
final Map<String, List<String>> projectTechnologies = {
  'm1': ['Embedded Systems', 'Ultrasonic Sensors', 'STM32F411RE', 'Analog-digital systems', 'IQ Demodulation', 'Monopulse Technique', 'C/C++', 'MATLAB', 'Altium Designer', 'PCB', 'UART', 'DMA'],
  'm2': ['Embedded Systems', 'Ultrasonic Sensors', 'ATXmega16A4U', 'Analog-digital systems', 'Real-Time Systems', 'FAT32', 'C', 'MATLAB', 'Altium Designer', 'PCB', 'SPI', 'UART', 'DMA'],
  'm3': ['Flutter', 'Dart', 'Firebase'],
  't1': ['Flutter', 'Riverpod', 'Firebase'],
};

/// Project ID lists used to build project sections.
const List<String> myProjectIds = ['m1', 'm2', 'm3'];   // Personal projects
const List<String> teamProjectIds = ['t1'];       // Team projects
