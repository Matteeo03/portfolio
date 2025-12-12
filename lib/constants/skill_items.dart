// skill_items.dart - plik z danymi

/// Struktura danych dla kategorii umiejętności
/// Podobna do tuple w Pythonie: (category, [skills])
const List<Map<String, dynamic>> skillCategories = [
  {
    "category": "Software Development",
    "skills": [
      "C",
      "C++",
      "Python",
      "MATLAB",
      "LabVIEW",
      "bash",
      "VHDL",
    ],
  },
  {
    "category": "Microcontrollers & Embedded Systems",
    "skills": [
      "STM32 (HAL/CubeMX)",
      "AVR",
      "ESP32",
      "FreeRTOS basics",
    ],
  },
  {
    "category": "Development Tools & IDE",
    "skills": [
      "STM32CubeIDE",
      "Keil µVision",
      "Visual Studio Code",
      "Git",
    ],
  },
  {
    "category": "Communication Protocols & Interfaces",
    "skills": [
      "CAN",
      "SPI",
      "I2C",
      "UART",
      "Ethernet",
      "BLE",
      "WiFi",
      "NFC",
      "GNSS",
      "GPRS/LTE",
    ],
  },
  {
    "category": "Single-Board Computers",
    "skills": [
      "Raspberry Pi",
    ],
  },
  {
    "category": "PCB Design & Circuit Simulation",
    "skills": [
      "Altium Designer",
      "CircuitStudio",
      "PADS",
      "LTspice",
    ],
  },
  {
    "category": "Prototyping & Assembly",
    "skills": [
      "PCB assembly",
      "SMD/THT soldering",
      "3D printing",
    ],
  },
  {
    "category": "Test & Measurement Equipment",
    "skills": [
      "Oscilloscope",
      "Multimeter",
      "Power supplies",
      "Logic analyzers",
      "Frequency counters",
      "Debuggers: ST-Link/SWD",
    ],
  },
  {
    "category": "Documentation & Graphics",
    "skills": [
      "LaTeX",
      "Inkscape",
      "GIMP",
      "Microsoft Office",
    ],
  },
];

// ============================================
// ALTERNATYWNA STRUKTURA - z ikonami emoji (opcjonalnie)
// ============================================

/// Jeśli chcesz dodać ikony/emoji do kategorii
const List<Map<String, dynamic>> skillCategoriesWithIcons = [
  {
    "category": "Software Development",
    "icon": "💻", // emoji jako ikona
    "skills": [
      "C",
      "C++",
      "Python",
      "MATLAB",
      "LabVIEW",
      "bash",
      "VHDL",
    ],
  },
  {
    "category": "Microcontrollers & Embedded",
    "icon": "🔧",
    "skills": [
      "STM32 (HAL/CubeMX)",
      "AVR",
      "ESP32",
      "ARM Cortex-M",
      "FreeRTOS basics",
    ],
  },
  {
    "category": "Communication Protocols",
    "icon": "📡",
    "skills": [
      "CAN",
      "SPI",
      "I2C",
      "UART",
      "Ethernet",
      "BLE",
      "WiFi",
      "NFC",
    ],
  },
  {
    "category": "PCB Design",
    "icon": "🎨",
    "skills": [
      "Altium Designer",
      "CircuitStudio",
      "PADS",
      "LTspice",
    ],
  },
  {
    "category": "Test Equipment",
    "icon": "📊",
    "skills": [
      "Oscilloscope",
      "Multimeter",
      "Logic analyzers",
      "ST-Link/SWD",
    ],
  },
  {
    "category": "Prototyping",
    "icon": "🔨",
    "skills": [
      "PCB assembly",
      "SMD/THT soldering",
      "3D printing",
    ],
  },
];

// ============================================
// JESZCZE BARDZIEJ ROZBUDOWANA - z poziomami (opcjonalnie)
// ============================================

/// Jeśli w przyszłości chcesz dodać poziomy zaawansowania
const List<Map<String, dynamic>> skillCategoriesWithLevels = [
  {
    "category": "Programming Languages",
    "skills": [
      {"name": "C/C++", "level": "Advanced"},
      {"name": "Python", "level": "Intermediate"},
      {"name": "MATLAB", "level": "Intermediate"},
      {"name": "VHDL", "level": "Basic"},
    ],
  },
  {
    "category": "Microcontrollers",
    "skills": [
      {"name": "STM32", "level": "Advanced"},
      {"name": "ESP32", "level": "Intermediate"},
      {"name": "AVR", "level": "Intermediate"},
    ],
  },
  // ... itd.
];