class NewsModel {
  final String title;
  final String description;
  final String date;

  NewsModel({
    required this.title,
    required this.description,
    required this.date,
  });
}

List<NewsModel> newsList = [
  NewsModel(
    title: "Flutter'ın Yeni Sürümü Yayınlandı!",
    description: "Google, Flutter 4.0 ile performansı iki katına çıkardığını duyurdu. Slivers artık daha akıcı.",
    date: "29 Ocak 2026",
  ),
  NewsModel(
    title: "Yapay Zeka Okyanusları Temizliyor",
    description: "Geliştirilen yeni bir algoritma, okyanustaki plastik atıkları %90 doğrulukla tespit ediyor.",
    date: "28 Ocak 2026",
  ),
  NewsModel(
    title: "Mars'ta İlk Şehir Planları Hazır",
    description: "Mimarlar, kızıl gezegende kurulacak ilk sürdürülebilir şehir için taslakları paylaştı.",
    date: "27 Ocak 2026",
  ),
  NewsModel(
    title: "Kuantum Bilgisayarlar Evimize Giriyor",
    description: "Yeni nesil kuantum işlemciler artık masaüstü bilgisayarlarda test edilmeye başlandı.",
    date: "26 Ocak 2026",
  ),
  NewsModel(
    title: "Elektrikli Araçlarda Batarya Devrimi",
    description: "Tek bir şarjla 2000 km gidebilen yeni nesil batarya teknolojisi tanıtıldı.",
    date: "25 Ocak 2026",
  ),
];