class HashTag {
  String title;

  HashTag({required this.title});
}

class Podcast {
  int id;
  String title;
  String view;
  String writer;
  String image;
  Podcast({required this.id, required this.title, required this.view, required this.writer, required this.image});
}

class BlogModel {
  int id;
  String title;
  String imageUrl;
  String content;
  String date;
  String writerName;
  String writerImageUrl;
  String views;

  BlogModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.content,
    required this.date,
    required this.writerName,
    required this.writerImageUrl,
    required this.views,
  });
}
