class NeonappModel {
  final String appName;
  final String appIcon;
  final String releaseDate;
  final String appCategory;
  final String storeURL;

  NeonappModel({
    required this.appCategory,
    required this.appIcon,
    required this.appName,
    required this.releaseDate,
    required this.storeURL,
  });
}


List<NeonappModel> appList = [
  NeonappModel(
    appName: "Blushy",
    appIcon: "assets/images/blushy.webp",
    releaseDate: "2025",
    appCategory: "Lifestyle / Beauty",
    storeURL: "https://apps.apple.com/app/id6470207871",
  ),
  NeonappModel(
    appName: "Mindio",
    appIcon: "assets/images/mindio.webp",
    releaseDate: "2025",
    appCategory: "Health & Fitness / Mental Health",
    storeURL: "https://apps.apple.com/us/app/mindio-emotional-support/id6477818924",
  ),
  NeonappModel(
    appName: "Lina",
    appIcon: "assets/images/lina.webp",
    releaseDate: "2024",
    appCategory: "Education / Book Summary",
    storeURL: "https://apps.apple.com/us/app/language-learning-tutor-lina/id6741462605",
  ),
  NeonappModel(
    appName: "Atomic",
    appIcon: "assets/images/atomic.webp",
    releaseDate: "2024",
    appCategory: "Productivity / Habit Tracker",
    storeURL: "https://apps.apple.com/us/app/atomic-habits-routines/id6474597340",
  ),
  NeonappModel(
    appName: "Unwine",
    appIcon: "assets/images/unwine.webp",
    releaseDate: "2024",
    appCategory: "Food & Drink / Lifestyle",
    storeURL: "https://apps.apple.com/us/app/unwine-sober-counter/id6473009913",
  ),
  NeonappModel(
    appName: "Toon Up",
    appIcon: "assets/images/toonUp.png",
    releaseDate: "2023",
    appCategory: "Photo & Video / AI",
    storeURL: "https://www.neonapps.co/tr/projects/toon-up",
  ),
  NeonappModel(
    appName: "Milena",
    appIcon: "assets/images/milena.webp",
    releaseDate: "2025",
    appCategory: "Social Networking / Dating",
    storeURL: "https://apps.apple.com/us/app/ai-video-generator-milena/id6743324891",
  ),
  NeonappModel(
    appName: "Polly",
    appIcon: "assets/images/polly.webp",
    releaseDate: "2024",
    appCategory: "Social / Entertainment",
    storeURL: "https://apps.apple.com/us/app/polly-ai-note-taker/id6743324895",
  ),
];