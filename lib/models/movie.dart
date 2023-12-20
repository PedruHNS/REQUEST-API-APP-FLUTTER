class Movie {
  final String name;
  final String? image;

  Movie({required this.name, required this.image});

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      name: map['nome'] ?? '',
      image: map['imagem'] ?? '',
    );
  }
}
