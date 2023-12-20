import 'package:buscando_dados_internet/screens/widgets/card_custom.dart';
import 'package:buscando_dados_internet/models/movie.dart';
import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  final List<Movie> movies;
  const ListViewCustom({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) => CardCustom(movie: movies[index]),
    );
  }
}
