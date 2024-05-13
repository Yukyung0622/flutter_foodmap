class Movie {
  final String title;
  final String keyword;
  final String cast;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
  : title = map['title'],
    keyword = map['keyword'],
    cast = map['cast'],
    poster = map['poster'],
    like = map['like'];


  @override
  String toString() => "Movie<$title:$keyword>";
}