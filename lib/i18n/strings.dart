import 'locale_controller.dart';
import '../constants/personal_info.dart';

const Map<String, Map<String, String>> strings = {
  'en': {
    'greeting': "Hi,\nI'm Lucynka\nA Flutter Developer",
    'about_short': "Pekingese — a companion dog breed...",
    'projects_my': "My projects",
    'projects_team': "Team Projects",
    'details_butto' :"View details",
    'contact': "✉ Mail me",
    'return': "   Top",
    'copy_email': "Copy e-mail",
    'github_source': "View source on GitHub",
    'made_by_p1': "Made by: ${PersonalInfo.name} — built with ",
    'made_by_p2': " Flutter 3.38.4\n© 2025 • This project is open-source (MIT)",
    // dodaj wszystkie klucze, których używasz w UI...
  },
  'pl': {
    'greeting': "Cześć,\nJestem Lucynka\nFlutter Developer",
    'about_short': "Pekińczyk — pies do towarzystwa...",
    'projects_my': "Moje projekty",
    'details_butto' :"Zobacz szczegóły",
    'projects_team': "Projekty zespołowe",
    'contact': "✉ Napisz do mnie",
    'return': "Powrót",
    'copy_email': "Kopiuj e-mail",
    'github_source': "Zobacz kod na GitHubie",
    'made_by_p1': "Stworzone przez: ${PersonalInfo.name} — zbudowane z ",
    'made_by_p2': " Flutter 3.38.4\n© 2025 • Projekt open-source (MIT)",
    // ...
  },
};

String t(String key) {
  final lang = localeNotifier.value;
  return strings[lang]?[key] ?? key;
}
