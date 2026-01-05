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
    'assets/projects/m1_1.JPG',
    'assets/projects/m1_2.JPG',
    'assets/projects/m1_3.JPG',
  ],
  'm2': [
    'assets/projects/m2_1.jpg',
    'assets/projects/m2_2.jpg',
    'assets/projects/m2_3.png',
  ],
  'm3': [
    'assets/projects/m3_1.jpg',
    'assets/projects/m3_2.jpg',
    'assets/projects/m3_3.jpg',
  ],
  't1': [
    'assets/projects/t1_1.JPG',
    'assets/projects/t1_2.JPG',
    'assets/projects/t1_3.JPG',
  ],
};

/// Mapping of project IDs to i18n keys for image captions.
/// Order MUST match the order of images in [projectImages].
final Map<String, List<String>> projectImageCaptions = {
  'm1': [
    'project.m1.image.0',
    'project.m1.image.1',
    'project.m1.image.2',
  ],
  'm2': [
    'project.m2.image.0',
    'project.m2.image.1',
    'project.m2.image.2',
  ],
  'm3': [
    'project.m3.image.0',
    'project.m3.image.1',
    'project.m3.image.2',
  ],
  't1': [
    'project.t1.image.0',
    'project.t1.image.1',
    'project.t1.image.2',
  ],
};

/// Mapping of project IDs to their technology stacks.
final Map<String, List<String>> projectTechnologies = {
  'm1': ['Embedded Systems', 'Ultrasonic Sensors', 'STM32F411RE', 'Analog-digital systems', 'IQ Demodulation', 'Monopulse Technique', 'C/C++', 'MATLAB', 'Altium Designer', 'PCB', 'UART', 'DMA'],
  'm2': ['Embedded Systems', 'Ultrasonic Sensors', 'ATXmega16A4U', 'Analog-digital systems', 'Real-Time Systems', 'FAT32', 'C', 'MATLAB', 'Altium Designer', 'PCB', 'SPI', 'UART', 'DMA'],
  'm3': ['Embedded Systems', 'STM32F103', 'Induction Heating', 'LLC Resonant Converter', 'IGBT', 'FAN7382N', 'PID Control', 'ESP8285', 'DS18B20', 'Python', 'Altium Designer', 'PCB'],
  't1': ['Distributed sensor networks', 'Seismic sensors', 'Infrasound microphones / Infrasound sensors', 'Data acquisition', 'Nanometrics Centaur', 'STM32', 'Altium Designer', 'Python', 'C/C++', 'MATLAB', 'Raspberry Pi'],
};

/// Project ID lists used to build project sections.
const List<String> myProjectIds = ['m1', 'm2', 'm3'];   // Personal projects
const List<String> teamProjectIds = ['t1'];       // Team projects
