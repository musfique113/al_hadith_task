class Books {
  final int id;
  final String title;
  final String titleAr;
  final int numberOfHadis;
  final String abvrCode;
  final String bookName;
  final String bookDescription;

  Books(
      {required this.id,
      required this.title,
      required this.titleAr,
      required this.numberOfHadis,
      required this.abvrCode,
      required this.bookName,
      required this.bookDescription});

  factory Books.fromJson(Map<String, dynamic> json) {
    return Books(
        id: json['id'],
        title: json['title'],
        titleAr: json['title_ar'],
        numberOfHadis: json['number_of_hadis'],
        abvrCode: json['abvr_code'],
        bookName: json['book_name'],
        bookDescription: json['book_descr']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'title_ar': titleAr,
      'number_of_hadis': numberOfHadis,
      'abvr_code': abvrCode,
      'book_name': bookName,
      'book_descr': bookDescription
    };
  }
}
