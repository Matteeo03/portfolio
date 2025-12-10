class ProjectUtils {
  final String id;              // unikalny identyfikator projektu
  final String image;           // ścieżka do obrazu
  final String title;           // nazwa projektu
  final String subtitle;        // krótki opis
  final String? description;    // dłuższy opis (opcjonalny)
  final String? androidLink;    // link do Google Play
  final String? iosLink;        // link do App Store
  final String? webLink;        // link do wersji web

  const ProjectUtils({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
    this.description,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// #########################################################
// HOBBY PROJECTS
// #########################################################

final List<ProjectUtils> hobbyProjectUtils = [
  const ProjectUtils(
    id: 'h1',
    image: 'assets/projects/1.png',
    title: 'English Learning App',
    subtitle:
        'A comprehensive English learning app for practicing and competing with each other.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.eduza',
  ),
  const ProjectUtils(
    id: 'h2',
    image: 'assets/projects/02.png', // upewnij się, że plik istnieje
    title: 'English Dictionary App',
    subtitle:
        'A dictionary application for English learners to easily look up word definitions.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.eduza_eng_dictionary',
    iosLink:
        "https://apps.apple.com/us/app/eduza-english-dictionary/id6443770339",
  ),
  const ProjectUtils(
    id: 'h3',
    image: 'assets/projects/03.png',
    title: 'Pocket Dictionary',
    subtitle:
        'A word memorising app to save and play your own words as quizzes.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary',
    iosLink:
        'https://apps.apple.com/tr/app/pocket-dictionary-1/id6447465115',
  ),
  const ProjectUtils(
    id: 'h4',
    image: 'assets/projects/04.png',
    title: 'Tasbeeh Counter',
    subtitle: 'A simple dzikr counter app with persistent storage.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.tasbeeh',
  ),
  const ProjectUtils(
    id: 'h5',
    image: 'assets/projects/05.png',
    title: 'Todo App',
    subtitle: 'A simple task management app with persistent storage.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.todo',
    iosLink: "https://apps.apple.com/us/app/eduza-todo/id6443970333",
  ),
  const ProjectUtils(
    id: 'h6',
    image: 'assets/projects/06.png',
    title: 'NotePad App',
    subtitle: 'A note-taking app for macOS and Android.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.notepad',
    iosLink: 'https://apps.apple.com/us/app/eduza-notepad/id6443973859',
  ),
];

// #########################################################
// WORK PROJECTS
// #########################################################

final List<ProjectUtils> workProjectUtils = [
  const ProjectUtils(
    id: 'w1',
    image: 'assets/projects/w01.png',
    title: 'English Brain Craft',
    subtitle:
        'English learning app for students using various learning methods.',
    androidLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
    iosLink:
        "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
  ),
  const ProjectUtils(
    id: 'w2',
    image: 'assets/projects/w02.png',
    title: 'Online Shop Web App',
    subtitle: 'Responsive online shop web app for car engine oil.',
    webLink: 'https://www.elo.best',
  ),
  const ProjectUtils(
    id: 'w3',
    image: 'assets/projects/w03.jpeg',
    title: 'Advertisement Management System',
    subtitle:
        'System to buy, sell, and manage advertisement. Internal project.',
    webLink: null, // brak działającego linku
  ),
];
