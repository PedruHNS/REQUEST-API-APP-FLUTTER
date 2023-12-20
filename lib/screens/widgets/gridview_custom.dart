// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:buscando_dados_internet/screens/widgets/card_custom.dart';
import 'package:buscando_dados_internet/models/movie.dart';

class GridViewCustom extends StatelessWidget {
  final List<Movie> movies;
  const GridViewCustom({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisExtent: 320,
      ),
      itemBuilder: (context, index) => CardCustom(movie: movies[index]),
    );
  }
}
