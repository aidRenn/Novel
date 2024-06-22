class NovelModel {
  final String title;
  final String author;
  final String imageUrl;
  final String synopsis;
  final List<Chapter> chapters;

  NovelModel({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.synopsis,
    required this.chapters,
  });
}

class Chapter {
  final String title;
  final String content;

  Chapter({required this.title, required this.content});
}
