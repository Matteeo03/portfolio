
const Map<String, String> projectM1StringsPl = {
  'project.m1.title': 'Wielowiązkowy Radar Ultradźwiękowy',
  'project.m1.subtitle': 'Ultradźwiękowy system lokalizacji obiektów wykorzystujący technikę monoimpulsową.',
  'project.m1.image.0': 'Urządzenie w trakcie testu. Pomiar odległości od obiektu.',
  'project.m1.image.1': 'Pomiary dwóch celów - jednoczesne określanie odległości i położenia kątowego (azymutu).',
  'project.m1.image.2': 'Zdjęcie urządzenia.',
  'project.m1.description': '''
Ultradźwiękowy system lokalizacji obiektów wykorzystujący technikę monoimpulsową

Radar wykrywa obiekty w zakresie 0,5-15\u00A0m z\u00A0rozdzielczością kątową 1-8° i\u00A0dokładnością odległości ~1\u00A0cm.

PROBLEM
Autonomiczne pojazdy i\u00A0systemy bezpieczeństwa wymagają tanich, dokładnych czujników do wykrywania przeszkód. Tradycyjne sonary ultradźwiękowe nie określają kierunku obiektu, a\u00A0radary elektromagnetyczne są drogie. Potrzebne było rozwiązanie łączące niski koszt z\u00A0możliwością lokalizacji (odległość + kierunek).

ROZWIĄZANIE
Zaprojektowałem radar wykorzystujący trzy przetworniki piezoelektryczne (40 kHz) w\u00A0konfiguracji monoimpulsowej. Zbudowałem kompletny tor analogowy: nadajnik z\u00A0mostkiem\u00A0H (40V), demodulatory IQ z\u00A0mieszaczami AD633, filtry Sallen-Key oraz system cyfrowy na STM32F411. Synchronizacja przez sprzężone liczniki zapewniła stabilność fazy. Opracowałem algorytm wyznaczania pozycji na podstawie sygnału Δ/Σ z\u00A0funkcją pelengacyjną. Projekt umożliwia jednoczesne oszacowanie odległości i\u00A0kierunku przy użyciu niedrogiego sprzętu ultradźwiękowego.

REZULTATY
Osiągnięto zasięg 15\u00A0m dla obiektów sferycznych (balon o\u00A0śr.\u00A080\u00A0cm), rozdzielczość azymutalną 1°\u00A0(obiekty bliskie) i\u00A08° (dalekie), próbkowanie 200 kHz. Opracowano prototyp systemu gotowy do integracji z\u00A0pojazdami autonomicznymi.

Moja rola: pełna realizacja projektu w\u00A0zakresie hardware i\u00A0software.

Link:
https://apd.usos.pw.edu.pl/diplomas/46829/?_s=1

  ''',
};

const Map<String, String> projectM1StringsEn = {
  'project.m1.title': 'Ultrasonic Monopulse Radar',
  'project.m1.subtitle': 'Ultrasonic object localization system using monopulse technique.',
  'project.m1.image.0': 'Device during a range test.',
  'project.m1.image.1': 'Dual-target measurement - simultaneous range and azimuth (bearing) estimation.',
  'project.m1.image.2': 'Photo of the device.',
  'project.m1.description': '''
Ultrasonic object localization system using monopulse technique.

Radar detects objects at 0.5-15\u00A0m range with 1-8° angular resolution and 1\u00A0cm distance accuracy.

PROBLEM
Autonomous vehicles and safety systems require affordable, accurate sensors for obstacle detection. Traditional ultrasonic sonars lack directional information, while electromagnetic radars are costly. A\u00A0solution combining low cost with accurate localization (distance + direction) was needed.

SOLUTION
I designed a radar using three piezoelectric transducers (40 kHz) in monopulse configuration. Built complete analog chain: H-bridge transmitter (40V), IQ demodulators with AD633 mixers, Sallen-Key filters, and STM32F411 digital system. Synchronization via coupled timers achieved phase stability. Developed position algorithm based on Δ/Σ signal with bearing function. This project enabled simultaneous distance and direction estimation using low-cost ultrasonic hardware.

RESULTS
Achieved 15\u00A0m range for spherical objects (80\u00A0cm dia. balloon), 1° azimuth resolution (near objects) and 8° (far), 200 kHz sampling. A\u00A0system prototype ready for integration into autonomous vehicles has been developed.

My role: complete hardware and software implementation.

Link:
https://apd.usos.pw.edu.pl/diplomas/46829/?_s=1

''',
};
