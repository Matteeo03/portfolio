
const Map<String, String> projectM2StringsPl = {
  'project.m2.title': 'Anemometr Ultradźwiękowy',
  'project.m2.subtitle': 'Dwuosiowy ultradźwiękowy czujnik prędkości i kierunku wiatru z pomiarem przesunięcia fazowego oraz rejestracją danych.',
  'project.m2.image.0': '...',
  'project.m2.image.1': '...',
  'project.m2.description': '''
Dwuosiowy anemometr ultradźwiękowy wykorzystujący pomiar przesunięcia fazowego.

Urządzenie mierzy prędkość wiatru w zakresie 0-20\u00A0m/s z rozdzielczością 0,1\u00A0m/s oraz dokładnością kierunku ±1°.

PROBLEM
Mechaniczne anemometry charakteryzują się dużą bezwładnością, niską czułością na nagłe podmuchy oraz podatnością na zużycie mechaniczne.
Wymaga to długiego czasu uśredniania i prowadzi do błędów pomiarowych.
Komercyjne ultradźwiękowe czujniki wiatru są kosztowne, co ogranicza ich dostępność. Potrzebne było tanie i wydajne rozwiązanie.

ROZWIĄZANIE
Zaprojektowałem dwuosiowy anemometr ultradźwiękowy oparty na pomiarze przesunięcia fazowego sygnałów 40\u00A0kHz pomiędzy nadajnikiem a odbiornikiem.
Zaimplementowałem enkoder kwadraturowy w celu rozszerzenia zakresu pomiarowego oraz system zdarzeń sterowany przez DMA w mikrokontrolerze ATxmega do próbkowania w czasie rzeczywistym.
Część analogowa obejmuje wzmacniacz transimpedancyjny, filtry pasmowe oraz detektor przejścia przez zero.
Oprogramowanie realizuje ekstrakcję fazy, korekcję pomiarów i zapis danych; wyniki są ciągle zapisywane na kartę SD (FatFs – Generic FAT Filesystem Module).
System zapewnia szybką reakcję na podmuchy oraz dokładny pomiar kierunku przy użyciu tanich przetworników piezoelektrycznych.

REZULTATY
Osiągnięto zakres pomiarowy 0-20\u00A0m/s z błędem <8% względem referencyjnej stacji pogodowej, rozdzielczość kierunku 1° oraz możliwość ciągłego zapisu danych na kartę SD.
Czas reakcji i czułość na podmuchy znacząco przewyższają typowe anemometry mechaniczne.

Moja rola: pełna realizacja projektu w\u00A0zakresie hardware i\u00A0software.

Link:
https://apd.usos.pw.edu.pl/diplomas/22611/?_s=1

  ''',
};

const Map<String, String> projectM2StringsEn = {
  'project.m2.title': 'Ultrasonic Anemometer',
  'project.m2.subtitle': 'Two-axis ultrasonic wind speed and direction sensor with phase-shift measurement and data logging.',
  'project.m2.image.0': '...',
  'project.m2.image.1': '...',
  'project.m2.description': '''
Two-axis ultrasonic anemometer using phase-shift measurement.

Device measures wind speed up to 0-20\u00A0m/s with 0.1\u00A0m/s resolution and ±1° direction accuracy.

PROBLEM
Mechanical anemometers suffer from high inertia, insensitivity to sudden gusts, and mechanical wear.
This requires long averaging times and introduces measurement errors.
Commercial ultrasonic wind sensors are expensive, limiting their accessibility. A low-cost, high-performance solution was needed.

SOLUTION
I designed a two-axis ultrasonic anemometer based on phase-shift measurement of 40\u00A0kHz signals between transmitter and receiver.
Implemented a quadrature encoder to extend measurement range and used a DMA-driven event system on an ATxmega microcontroller for real-time sampling.
The electronics include a transimpedance amplifier, bandpass filters and a zero-crossing detector.
Firmware performs phase extraction, range correction and logging; data are written continuously to an SD card (FatFs - Generic FAT Filesystem Module).
The system provides fast response to gusts and accurate directional measurement using low-cost piezoelectric transducers.

RESULTS
Achieved 0-20\u00A0m/s measurement range with <8% error compared to a reference weather station, 1° direction resolution, and continuous SD logging capability.
Response time and gust sensitivity significantly outperform typical mechanical anemometers.

My role: complete hardware and software implementation.

Link:
https://apd.usos.pw.edu.pl/diplomas/22611/?_s=1
  ''',
};
