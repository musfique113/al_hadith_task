class Chapter {
  final int id;
  final String chapterId;
  final String bookId;
  final String title;
  final int number;
  final String hadisRange;
  final String bookName;

  Chapter(
      {required this.id,
      required this.chapterId,
      required this.bookId,
      required this.title,
      required this.number,
      required this.hadisRange,
      required this.bookName});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
        id: json['id'],
        chapterId: json['chapter_id'],
        bookId: json['book_id'],
        title: json['title'],
        number: json['number'],
        hadisRange: json['hadis_range'],
        bookName: json['book_name']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chapter_id': chapterId,
      'book_id': bookId,
      'title': title,
      'number': number,
      'hadis_range': hadisRange,
      'book_name': bookName,
    };
  }
}
