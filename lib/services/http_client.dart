import 'dart:convert';

import 'package:buscando_dados_internet/models/movie.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  Future<List<Movie>> getMovies() async {
    const url =
        'https://raw.githubusercontent.com/alura-cursos/obtendo_dados_com_flutter_http/main/filmes.json';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final list = jsonDecode(response.body);

      return list.map<Movie>((personMap) => Movie.fromMap(personMap)).toList();
    } else {
      return Future.error('erro ao carregar filmes');
    }
  }
}
