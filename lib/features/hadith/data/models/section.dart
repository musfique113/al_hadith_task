class Section {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String title;
  final String preface;
  final String number;

  Section(
      {required this.id,
      required this.bookId,
      required this.bookName,
      required this.chapterId,
      required this.sectionId,
      required this.title,
      required this.preface,
      required this.number});

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
        id: json['id'],
        bookId: json['book_id'],
        bookName: json['book_name'],
        chapterId: json['chapter_id'],
        sectionId: json['section_id'],
        title: json['title'],
        preface: json['preface'],
        number: json['number']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'book_id': bookId,
      'book_name': bookName,
      'chapter_id': chapterId,
      'section_id': sectionId,
      'title': title,
      'preface': preface,
      'number': number,
    };
  }
}
